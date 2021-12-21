usethis::use_package("boot")
usethis::use_package("Ball")
usethis::use_package("FNN")
usethis::use_package("energy")
usethis::use_package("bootstrap")

usethis::use_rcpp()
usethis::use_mit_license("Zezhen Wang")
usethis::use_readme_md()
usethis::use_code_of_conduct("wzz1999@mail.ustc.edu.cn")
usethis::use_vignette("homework")

devtools::document()

devtools::check()

devtools::build_vignettes()

devtools::build(vignettes=TRUE)

install.packages('../StatComp_0.0.0.9000.tar.gz',vignettes=TRUE,repo=NULL)
install.packages('../StatComp21051_0.0.0.9000.tar.gz',vignettes=TRUE,repo=NULL)

library(StatComp)

?StatComp-package