@include('/layouts/page')

<section class="title">
    <h1>Overzicht geleverde producten</h1>
    <section class="form">
        <form action="" method="post">
            @csrf
            @method('post')
            <input class="date" name="start_date" type="date" required>
            <input class="date" name="end_date" type="date" required>
            <input class="submit" type="submit" value="Maak selectie">
        </form>
    </section>
</section>


<section class="table">
    <table>
        <thead>
            <tr>
                <th>Naam leverancier</th>
                <th>Contact persoon</th>
                <th>Product naam</th>
                <th>Totaal geleverd</th>
                <th>Specificatie</th>
            </tr>
        </thead>
        <tbody>
            @if($products->isEmpty())
            <tr>
                <td colspan="5">Er zijn geen leveringen geweest van producten in deze periode</td>
            </tr>
            @else
            @foreach($products as $product)
            <tr>
                <td>{{$product->leverancier_naam}}</td>
                <td>{{$product->ContactPersoon}}</td>
                <td>{{$product->product_naam}}</td>
                <td>{{$product->Aantal}}</td>
                @if($info == null && $secondInfo == null)
                <td><a href="{{route('specificatie.index', [$product->id, $info = '00-00-0000', $secondInfo = '00-00-0000'])}}" class="symbols">&#63;</a></td>
                @else
                <td><a href="{{route('specificatie.index', [$product->id, $info, $secondInfo])}}" class="symbols">&#63;</a></td>
                @endif
            </tr>
            @endforeach
            @endif
        </tbody>
    </table>
</section>