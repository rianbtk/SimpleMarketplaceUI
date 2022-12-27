<style>
    #footer-head{
        font-size: 18px;
        font-weight: 700;
        line-height: 27px;
        text-transform: uppercase;
        color: #3a3a3a;
    }
</style>
<footer>
    <div class="footer" style="background-color: #fff; padding:20px; ">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <span id="footer-head">
                    <?php 
                        echo gettoko('longname_shop')?
                        gettoko('longname_shop'):
                        gettoko('shortname_shop'); 
                    ?>
                    </span>
                    &nbsp;&nbsp;
                    <span>
                        <b>
                            &quot;<?php echo gettoko('motto_shop') ?>&quot;
                        </b>
                    </span>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 hidden-xs">
                    <h3>Info</h3>
                    <ul>
                        <li class="supportLi">
                            <p><?php echo gettoko('motto_shop') ?></p>
                            <h4>
                                <a class="inline" href="callto:+12025550151"> 
                                    <strong> 
                                    <i class="fa fa-phone"> </i> 
                                    <?php echo gettoko('phone_contact') ?> 
                                    </strong> 
                                </a>
                            </h4>
                            <h4>
                                <a class="inline" href="#"> 
                                    <i class="fa fa-envelope-o"> </i>
                                    <?php echo gettoko('email_shop') ?>
                                </a>
                            </h4>
                        </li>
                    </ul>
                </div>
                <div style="clear:both" class="hide visible-xs"></div>
            </div>
        </div>
    </div>
    <script>
        function tampil(){
            document.getElementById("log_admin").style.display='block';
        }
        function hilang(){
            document.getElementById("log_admin").style.display='none';
        }
    </script>
</footer>