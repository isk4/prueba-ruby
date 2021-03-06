def head
    return (
        "\t<head>
        <!-- Required meta tags -->
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
        <!-- Bootstrap CSS -->
        <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' integrity='sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z' crossorigin='anonymous'>
        <title>Curiosity Rover Photos</title>
    </head>\n"
    )
end

def body(navbar, content)
    return (
        "\t<body style='padding-top: 56px'>\n" +
        navbar +
        "\t\t<main>\n" +
        content +
        "\t\t</main>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src='https://code.jquery.com/jquery-3.5.1.slim.min.js' integrity='sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj' crossorigin='anonymous'></script>
        <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js' integrity='sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN' crossorigin='anonymous'></script>
        <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js' integrity='sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV' crossorigin='anonymous'></script>
    </body>\n"
    )
end

def navbar
    return(
        "\t\t<nav class='navbar navbar-expand-lg navbar-dark bg-dark fixed-top'>
            <div class='container'>
                <a class='navbar-brand font-weight-bold' href='#top'>Curiosity Rover Photos</a>
                <button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarNavAltMarkup' aria-controls='navbarNavAltMarkup' aria-expanded='false' aria-label='Toggle navigation'>
                    <span class='navbar-toggler-icon'></span>
                </button>
                <div class='collapse navbar-collapse' id='navbarNavAltMarkup'>
                    <div class='navbar-nav ml-auto'>
                        <a class='nav-link text-light' target='_blank' href='https://github.com/chrisccerami/mars-photo-api'>API Documentation<span class='sr-only'>(current)</span></a>
                        <a class='nav-link text-light' target='_blank' href='https://api.nasa.gov/'>Other NASA APIs</a>
                    </div>
                </div>
            </div>
        </nav>\n"
    )
end

def card_gen(hash)
    cards = "\t\t\t<div class='row row-cols-1 row-cols-md-3'>\n"

    hash["photos"].each do |photo|
        cards += 
        "\t\t\t\t<div class='col'>
                    <div class='card h-100'>
                        <a target='_blank' href='#{photo['img_src']}'><img src='#{photo['img_src']}' class='card-img-top' alt=#{photo["id"]}></a>
                        <div class='card-body'>
                            <h5 class='card-title'>ID: #{photo["id"]}</h5>
                            <p class='card-text'>Taken with: #{photo["camera"]["full_name"]}</p>
                        </div>
                    </div>
                </div>\n"
    end

    cards += "\t\t\t</div>\n"

    return cards
end