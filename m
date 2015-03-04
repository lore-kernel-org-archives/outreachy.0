X-GM-THRID: 6115060350976
X-Received: by 10.70.135.8 with SMTP id po8mr3129352pdb.7.1425450525755;
        Tue, 03 Mar 2015 22:28:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.1 with SMTP id i1ls527173qgi.34.gmail; Tue, 03 Mar 2015
 22:28:45 -0800 (PST)
X-Received: by 10.236.11.196 with SMTP id 44mr3107611yhx.31.1425450525523;
        Tue, 03 Mar 2015 22:28:45 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si373567pac.2.2015.03.03.22.28.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 22:28:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [166.170.43.162])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 144BC92F;
	Wed,  4 Mar 2015 06:28:45 +0000 (UTC)
Date: Tue, 3 Mar 2015 22:28:38 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8192u: Fix quoted
 string split across lines
Message-ID: <20150304062838.GA11114@kroah.com>
References: <1425333415-5205-1-git-send-email-dilekuzulmez@gmail.com>
 <1425333415-5205-2-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425333415-5205-2-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 02, 2015 at 11:56:55PM +0200, Dilek Uzulmez wrote:
> This patch fixes checkpatch.pl warning in file ieee80211_crypt_ccmp.c
> WARNING: "quoted string split across lines warning"
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  .../staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c    | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> index 95f5fc7..344de83 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> @@ -73,8 +73,8 @@ static void *ieee80211_ccmp_init(int key_idx)
>  
>         priv->tfm = (void *)crypto_alloc_cipher("aes", 0, CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->tfm)) {
> -		printk(KERN_DEBUG "ieee80211_crypt_ccmp: could not allocate "
> -		       "crypto API aes\n");
> +		printk(KERN_DEBUG "ieee80211_crypt_ccmp: could not allocate
> +				crypto API aes\n");

Um, I don't think you did the correct thing here :(

And this patch breaks the build, proving you didn't even test build it
:(


