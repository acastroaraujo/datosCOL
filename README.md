
<!-- README.md is generated from README.Rmd. Please edit that file -->

# datosCOL

<!-- badges: start -->

<!-- badges: end -->

El propósito de **datosCOL** es facilitar el acceso al [portal de datos
abiertos](https://www.datos.gov.co/) de Colombia.

Para que funcione debe haber una variable llamada `DATOS_ABIERTOS_COL`
con token de aplicación, que se puede crear gratuitamente aquí:

<https://www.datos.gov.co/profile/edit/developer_settings>

## Instalación

``` r
# install.packages("pak")
pak::pak("acastroaraujo/datosCOL")
```

## Ejemplo

This is a basic example which shows you how to solve a common problem:

``` r
library(datosCOL)
divipola <- get_dataset(id = "gdxc-w37w")
```

Ajá.

``` r
str(divipola)
#> 'data.frame':    1122 obs. of  11 variables:
#>  $ cod_dpto      : chr  "05" "05" "05" "05" ...
#>  $ dpto          : chr  "ANTIOQUIA" "ANTIOQUIA" "ANTIOQUIA" "ANTIOQUIA" ...
#>  $ cod_mpio      : chr  "05001" "05002" "05004" "05021" ...
#>  $ nom_mpio      : chr  "MEDELLÍN" "ABEJORRAL" "ABRIAQUÍ" "ALEJANDRÍA" ...
#>  $ tipo_municipio: chr  "Municipio" "Municipio" "Municipio" "Municipio" ...
#>  $ longitud      : chr  "-75,581775" "-75,428739" "-76,064304" "-75,141346" ...
#>  $ latitud       : chr  "6,246631" "5,789315" "6,632282" "6,376061" ...
#>  $ :id           : chr  "row-ywwd~razm_wkai" "row-qjw9.nxxd.tjwp" "row-ijqy.fgwy.fvbr" "row-e4yk~da4i~tvym" ...
#>  $ :version      : chr  "rv-wpmg-haq9~ac5c" "rv-ymw3_fimg_kpkd" "rv-pz5r.vvbj~jjx8" "rv-j2dc_6aaj-mkvy" ...
#>  $ :created_at   : chr  "2025-01-24T20:44:32.724Z" "2025-01-24T20:44:32.724Z" "2025-01-24T20:44:32.724Z" "2025-01-24T20:44:32.724Z" ...
#>  $ :updated_at   : chr  "2025-01-24T20:44:32.724Z" "2025-01-24T20:44:32.724Z" "2025-01-24T20:44:32.724Z" "2025-01-24T20:44:32.724Z" ...
```
