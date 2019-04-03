
        window.onscroll = function () {
            var t = document.documentElement.scrollTop || document.body.scrollTop;
            //var fi = document.getE   lementById("lxwm");
            //if (t >= 880) {
            //    fi.style.display = "block";

            //} else {
            //    fi.style.display = "none";
            //}

            var fi = document.getElementById("wszcd");
            if (t >= 880) {
                fi.style.position = "absolute";
                t = t -80;
                fi.style.left = "733px";
                fi.style.top = t+"px";
                if (t >= 4300) {
                    fi.style.position = "absolute";
                    fi.style.left = "733px";
                    fi.style.top = "4110px";
                }

            }
            else {
                fi.style.position = "absolute";
                fi.style.left = "735x";
                fi.style.top = "800px";
            }
           
        }