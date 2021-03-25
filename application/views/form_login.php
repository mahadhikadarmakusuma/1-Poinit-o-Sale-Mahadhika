    <div class="pdd-horizon-30 pdd-vertical-30">
        <div class="mrg-btm-30">
            <!-- <img class="img-responsive inline-block" src="<?php echo base_url() ?>assets/dist/assets/images/logo/logo.png" alt=""> -->
            <h2 class="inline- center no-mrg-vertical pdd-top-15"><center>SISTEM POS</h2>
            <h2 class="inline- center no-mrg-vertical pdd-top"><center>BENGKEL MANGGALA MOTOR</h2>
            <h2 class="inline- center no-mrg-vertical pdd-top-10">Login</h2>
        </div>
        <p class="mrg-btm-5 font-size-13">Masukkan username dan password untuk masuk</p>
         <?php echo form_open('Auth/login') ?>
        <div class="form-group">
            <input type="text" name="username" required="" class="form-control" placeholder="User name">
            </div>
            <div class="form-group">
                <input type="password" required="" name="password" class="form-control" placeholder="Password">
            </div>
            <div class="mrg-top-20 text-right">
                
                <button type="submit" name="submit" class="btn btn-info">Login</button>
            </div>
            <p class="mrg-btm-15 font-size-9">*Kontak Admin jika lupa username dan password</p>
        <?php form_close() ?>
    </div>