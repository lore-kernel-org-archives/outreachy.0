X-GM-THRID: 6329495463122698240
X-Received: by 10.194.126.165 with SMTP id mz5mr2890344wjb.5.1473701503780;
        Mon, 12 Sep 2016 10:31:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.80 with SMTP id 77ls460675ljj.0.gmail; Mon, 12 Sep 2016
 10:31:43 -0700 (PDT)
X-Received: by 10.46.32.154 with SMTP id g26mr1896805lji.3.1473701503076;
        Mon, 12 Sep 2016 10:31:43 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b1si96792wmg.0.2016.09.12.10.31.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 10:31:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,323,1470693600"; 
   d="scan'208";a="192889885"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 19:31:42 +0200
Date: Mon, 12 Sep 2016 19:31:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    wsa+renesas@sang-engineering.com
Subject: Re: [Outreachy kernel] [PATCH] Correcting multi line comments' begin
 & end quotes
In-Reply-To: <20160912171420.10291-1-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609121927440.29099@hadrien>
References: <20160912171420.10291-1-gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 12 Sep 2016, Gargi Sharma wrote:

> checkpatch shows warning about end quotes not being in a different line.
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/ks7010/eap_packet.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/ks7010/eap_packet.h b/drivers/staging/ks7010/eap_packet.h
> index 5f70fe1..53d803b 100644
> --- a/drivers/staging/ks7010/eap_packet.h
> +++ b/drivers/staging/ks7010/eap_packet.h
> @@ -51,7 +51,7 @@ enum { EAPOL_KEY_TYPE_RC4 = 1, EAPOL_KEY_TYPE_RSN = 2,
>  struct ieee802_1x_eapol_key {
>  	unsigned char type;
>  	unsigned short key_length;
> -	/*
> +	/*
>  	 * does not repeat within the life of the keying material used to
>  	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here
>  	 */

This patch appears to be on top of the previous one.  If you need to
correct a patch, then you should add the change to the previous one, and
send a new patch that includes both changes.  The new patch should contain
[PATCH v2] in the subject line and have a description of the changes since
the previous version under the ---.  See the Revising your patches section
in the tutorial.

The From line does look better now.

julia

> --
> 2.9.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160912171420.10291-1-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

