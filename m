X-GM-THRID: 6210537290712743936
X-Received: by 10.194.20.68 with SMTP id l4mr2049768wje.0.1446594976035;
        Tue, 03 Nov 2015 15:56:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.216.138 with SMTP id p132ls952031wmg.3.canary; Tue, 03 Nov
 2015 15:56:15 -0800 (PST)
X-Received: by 10.28.170.75 with SMTP id t72mr4052890wme.5.1446594975659;
        Tue, 03 Nov 2015 15:56:15 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id l1si725258wmb.1.2015.11.03.15.56.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 15:56:15 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0MTtCv-1a2FmJ3YvZ-00QiZg; Wed, 04 Nov
 2015 00:56:14 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH 2/2] scsi: bfa: Replace struct timeval with ktime_t
Date: Wed, 04 Nov 2015 00:56:14 +0100
Message-ID: <3991598.sWF2Cv7hDN@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <5acb9a010438369d26ce6be07b8ae90974ed24f0.1446003130.git.amitoj1606@gmail.com>
References: <cover.1446003130.git.amitoj1606@gmail.com> <5acb9a010438369d26ce6be07b8ae90974ed24f0.1446003130.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:n5MHaTHAvM34+8TN6m6M9GE6eulxW6fghByJEYWe7uYfIpS/PGZ
 dYRqh9BCYgAeDXgHOxsZAIMij0QKy3dkDdl/I7MI4kclXDQY1Vex9lJALIkHwgtdycYAD7G
 w8wdbHa+aDx1llCDLyRtbwGwsYUnv9pG8s35js1q/hjnLSVlk818nS5gS+1Ii7LUIpg6fWO
 QdQUnh1UCLeqbHk+sSUGQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:9i//3aj8FAY=:r+1DUy0UXIUBU0j3TdsJIv
 zOvFijB3M+UlY6fuhhlJTGxjXqqvGMUnVEJQRdqhQztOSyBK4mtkJ2PjhdbgrVnxBVBT3KoUg
 1X/KdOi1JUWXUr1zoseSjta/AqFU0phmPWmXUPtgNj2w9SdX9UlmYWf1za8TWepd04sHji4el
 Syh/fMITzYLbuJTpE6P00Z1lnF4+clscWhXld8TmGJ7x3VXMfeSsNV8datuYyWRzG7BGxZ/0x
 /oPh7eYIbjZjrfLfor5En99WScwWf66D4feFSzyHby4m7GFSVjtNATxcwpRtNYZYSjSzwHRU4
 4HghWh4sEb/pRhjch2gG67jySQGAunn6F3hQKJSTiYBNLlXqnm+4wogGTQ8wtuBAm8A9dO8A2
 /WA904qIemyfU+4Nasm4Png6LcqSzZb5NSn6n2Y2nXQforMwvBl3oJk5eWvuMae6rLjezB1f/
 O6ikIhbwzAvbzjwzWuifWi+SBXYFxD17FX7cWKQHNoEyE73iCuIFSt2368T1D6Cj9EnBEEG3o
 OM+UDkwZ13Qshk3C7xPbyOpXH8sx7n+tMbtw1fMceeqqdre7Tosg56FIX3Y/0fmQ4hlxifHYw
 adA80WZONMNx0BhtyWKI3025L/n9HMNTFoqkqLwe8M0lZxJiDQ5kT5uwnyJxYQHbxIUeHLTe0
 Wlp6YbBlHKNAh2u97hKL3lvFr+iqi8pX5sz473vuqByazAnaI28pjIDxc5R7ZRylVNMuqRHnN
 mFXbCOp7B9RB/KeT

On Wednesday 28 October 2015 09:13:51 Amitoj Kaur Chawla wrote:
> 
> diff --git a/drivers/scsi/bfa/bfa_defs_svc.h b/drivers/scsi/bfa/bfa_defs_svc.h
> index 638f441f..e7acf41 100644
> --- a/drivers/scsi/bfa/bfa_defs_svc.h
> +++ b/drivers/scsi/bfa/bfa_defs_svc.h
> @@ -1454,7 +1454,7 @@ struct bfa_aen_entry_s {
>         enum bfa_aen_category   aen_category;
>         u32                     aen_type;
>         union bfa_aen_data_u    aen_data;
> -       struct timeval          aen_tv;
> +       ktime_t                 aen_time;
>         u32                     seq_num;
>         u32                     bfad_num;
>  };
> diff --git a/drivers/scsi/bfa/bfad_im.h b/drivers/scsi/bfa/bfad_im.h
> index f6c1023..b37fcba 100644
> --- a/drivers/scsi/bfa/bfad_im.h
> +++ b/drivers/scsi/bfa/bfad_im.h
> @@ -131,7 +131,7 @@ struct bfad_im_s {
>  
>  /* post fc_host vendor event */
>  #define bfad_im_post_vendor_event(_entry, _drv, _cnt, _cat, _evt) do {       \
> -       do_gettimeofday(&(_entry)->aen_tv);                                   \
> +       (_entry)->aen_time = ktime_get();                                     \
>         (_entry)->bfad_num = (_drv)->inst_no;                                 \
>         (_entry)->seq_num = (_cnt);                                           \
>         (_entry)->aen_category = (_cat);                                      \
> -- 
> 

This can't be right: you are only writing to the variable. If there is anyone
reading from it elsewhere, that code needs to be changed as well in the
same patch. If not, the variable can just be removed.

	Arnd

