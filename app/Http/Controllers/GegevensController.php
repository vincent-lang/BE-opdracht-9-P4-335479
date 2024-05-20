<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductPerAllergeen;
use App\Models\ProductPerLeverancier;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class GegevensController extends Controller
{
    public function index(Request $request, $info = null, $secondInfo = null)
    {
        if ($request != null) {
            $info = $request->input('start_date');
            $secondInfo = $request->input('end_date');
        }
        if ($info == null && $secondInfo == null) {
            $products = DB::table('product_per_leveranciers')->select('products.Naam as product_naam', 'leveranciers.Naam as leverancier_naam', 'leveranciers.ContactPersoon', 'product_per_leveranciers.DatumLevering', 'products.id')->selectRaw('SUM(product_per_leveranciers.Aantal) as Aantal')->join('products', 'product_per_leveranciers.product_id', 'products.id')->join('leveranciers', 'product_per_leveranciers.leverancier_id', 'leveranciers.id')->orderBy('leverancier_naam', 'asc')->groupBy('product_naam')->get();
            return view('producten.index', compact('products', 'info', 'secondInfo'));
        } else {
            $products = DB::table('product_per_leveranciers')->select('products.Naam as product_naam', 'leveranciers.Naam as leverancier_naam', 'leveranciers.ContactPersoon', 'product_per_leveranciers.DatumLevering', 'products.id')->selectRaw('SUM(product_per_leveranciers.Aantal) as Aantal')->join('products', 'product_per_leveranciers.product_id', 'products.id')->join('leveranciers', 'product_per_leveranciers.leverancier_id', 'leveranciers.id')->whereBetween('product_per_leveranciers.DatumLevering', [$info, $secondInfo])->orderBy('leverancier_naam', 'asc')->groupBy('product_naam')->get();
            return view('producten.index', compact('products', 'info', 'secondInfo'));
        }
    }

    public function specificatieIndex(Product $product, $info, $secondInfo)
    {
        $allergeens = ProductPerAllergeen::join('allergeens', 'product_per_allergeens.allergeen_id', 'allergeens.id')->where('product_per_allergeens.product_id', $product->id)->get();
        $leverings = ProductPerLeverancier::where('product_id', $product->id)->orderBy('product_per_leveranciers.DatumLevering', 'desc')->get();
        return view('specificatie.index', compact('allergeens', 'leverings', 'product', 'info', 'secondInfo'));
    }
}
