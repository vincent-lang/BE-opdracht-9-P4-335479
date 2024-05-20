@include('/layouts/page')

<section class="title">
    <h1>Specificatie geleverde producten</h1>
</section>

<section class="contact">
    <h3>Start datum: {{date('d-m-Y', strtotime($info))}}</h3>
    <h3>Eind datum: {{date('d-m-Y', strtotime($secondInfo))}}</h3>
    <h3>Product naam: {{$product->Naam}}</h3>
    <section class="extra-info">
        <h3>Allergenen:</h3>
        @foreach($allergeens as $allergeen)
        <h4>{{$allergeen->Naam}},</h4>
        @endforeach
    </section>
</section>

<section class="table">
    <table>
        <thead>
            <tr>
                <th>Datum levering</th>
                <th>Aantal</th>
            </tr>
        </thead>
        <tbody>
            @foreach($leverings as $levering)
            <tr>
                <td>{{date('d-m-Y', strtotime($levering->DatumLevering))}}</td>
                <td>{{$levering->Aantal}}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</section>