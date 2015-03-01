X-GM-THRID: 5368833900544
X-Received: by 10.152.9.199 with SMTP id c7mr452949lab.5.1425213255399;
        Sun, 01 Mar 2015 04:34:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.40 with SMTP id n8ls360891wiy.14.gmail; Sun, 01 Mar
 2015 04:34:15 -0800 (PST)
X-Received: by 10.180.182.201 with SMTP id eg9mr1538351wic.3.1425213255081;
        Sun, 01 Mar 2015 04:34:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i7si467639wif.0.2015.03.01.04.34.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 04:34:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,671,1418079600"; 
   d="scan'208";a="123852858"
Received: from wnpgmb0903w-ds01-92-71.dynamic.mtsallstream.net (HELO unknownE0F847206056) ([142.161.92.71])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2015 13:34:14 +0100
Date: Sun, 1 Mar 2015 06:34:12 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 09/12] staging: media: Use kcalloc,
 instead of kzalloc.
In-Reply-To: <556953cddf889e94753d5fd09201cc94dbe201f6.1425211236.git.navyasri.tech@gmail.com>
Message-ID: <alpine.DEB.2.10.1503010630450.2545@hadrien>
References: <cover.1425211235.git.navyasri.tech@gmail.com> <556953cddf889e94753d5fd09201cc94dbe201f6.1425211236.git.navyasri.tech@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Could you redo with a much smaller commit message?  It would be reasonable
to put the whole semantic patch in the cover letter.  For the individual
patches, you can just put something that gives the idea, but perhaps
something that does not avoid all false positives, like the big one tries
to do.

It could also be better to send separate series for kmalloc -> k{z,c}alloc
and kzalloc -> kcalloc.

Finally, whne you introduce kcalloc, you may end up with some unneeded
parentheses in the argument list.  For example if the original code was
kzalloc ((a+b) * c, ...).  You should remove the parentheses in the result
(you can extend the semantic patch to do this).

julia

On Sun, 1 Mar 2015, Navya Sri Nizamkari wrote:

> The semantic patch used for this change is:
>
> @@
> type T, T2;
> expression x;
> identifier f,f1;
> expression E1,E2,E3,E4;
> statement S,S1,S2;
> @@
> - x = (T)kmalloc(E1,E2)
> + x = kzalloc(E1,E2)
> ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> when != \(while(...) S\|for(...;...;...) S\)
> (
> if ((x!=NULL)&&...) {
> ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
> when != \(while(...) S1\|for(...;...;...) S1\)
> - memset((T2)x,0,E1);
> ...
> } else S2
> |
> - memset((T2)x,0,E1);
> )
> @@
> type T, T2;
> type T1;
> T1 *x;
> T1 *y;
> identifier f,f1;
> expression E2,E3,E4;
> statement S,S1,S2;
> @@
> - x = (T)kmalloc(sizeof(T1),E2)
> + x = kzalloc(sizeof(T1),E2)
> ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> when != \(while(...) S\|for(...;...;...) S\)
> (
> if ((x!=NULL)&&...) {
> ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
> when != \(while(...) S1\|for(...;...;...) S1\)
> - memset((T2)x,0,sizeof(*y));
> ...
> } else S2
> |
> - memset((T2)x,0,sizeof(*y));
> )
> @@
> type T, T2;
> type T1;
> T1 *x;
> T1 *y;
> identifier f,f1;
> expression E,E2,E3,E4;
> statement S,S1,S2;
> @@
> - x = (T)kmalloc(sizeof(T1)*E,E2)
> + x = kzalloc(sizeof(T1)*E,E2)
> ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> when != \(while(...) S\|for(...;...;...) S\)
> (
> if ((x!=NULL)&&...) {
> ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
> when != \(while(...) S1\|for(...;...;...) S1\)
> - memset((T2)x,0,sizeof(*y)*E);
> ...
> } else S2
> |
> - memset((T2)x,0,sizeof(*y)*E);
> )
> @@
> type T, T2;
> type T1;
> T1 *x;
> T1 *y;
> identifier f,f1;
> expression E2,E3,E4;
> statement S,S1,S2;
> @@
> - x = (T)kmalloc(sizeof(*y),E2)
> + x = kzalloc(sizeof(*y),E2)
> ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> when != \(while(...) S\|for(...;...;...) S\)
> (
> if ((x!=NULL)&&...) {
> ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
> when != \(while(...) S1\|for(...;...;...) S1\)
> - memset((T2)x,0,sizeof(T1));
> ...
> } else S2
> |
> - memset((T2)x,0,sizeof(T1));
> )
> @@
> type T, T2;
> type T1;
> T1 *x;
> T1 *y;
> identifier f,f1;
> expression E,E2,E3,E4;
> statement S,S1,S2;
> @@
> - x = (T)kmalloc(sizeof(*y)*E,E2)
> + x = kzalloc(sizeof(*y)*E,E2)
> ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> when != \(while(...) S\|for(...;...;...) S\)
> (
> if ((x!=NULL)&&...) {
> ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
> when != \(while(...) S1\|for(...;...;...) S1\)
> - memset((T2)x,0,sizeof(T1)*E);
> ...
> } else S2
> |
> - memset((T2)x,0,sizeof(T1)*E);
> )
> @ disable neg_if, mult_comm @
> type T, T2;
> expression x;
> identifier f,f1;
> expression E0,E1,E2,E3,E4;
> statement S,S1,S2;
> @@
> - x = (T)kmalloc(E0 * E1,E2)
> + x = kzalloc(E0 * E1,E2)
> ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> when != \(while(...) S\|for(...;...;...) S\)
> (
> if ((x!=NULL)&&...) {
> ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
> when != \(while(...) S1\|for(...;...;...) S1\)
> - memset((T2)x,0,E1 * E0);
> ...
> } else S2
> |
> - memset((T2)x,0,E1 * E0);
> )
> // ---------------------------------------------------------------------
> // ---------------------------------------------------------------------
> // have to duplicate everything again to make a version with no braces
> //\(x->fld\|f(...,x,...)\|x=E\)
> @@
> type T, T2;
> expression x;
> identifier f;
> expression E1,E2,E3;
> statement S,S2;
> @@
> - x = (T)kmalloc(E1,E2)
> + x = kzalloc(E1,E2)
> ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> when != \(while(...) S\|for(...;...;...) S\)
> (
> - if ((x!=NULL)&&...) memset((T2)x,0,E1);
> |
> + if (!x)
> - if ((x!=NULL)&&...) memset((T2)x,0,E1); else
> S2
> )
> @ @
> type T, T2;
> type T1;
> T1 *x;
> T1 *y;
> identifier f;
> expression E2,E3;
> statement S,S2;
> @@
> - x = (T)kmalloc(sizeof(T1),E2)
> + x = kzalloc(sizeof(T1),E2)
> ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> when != \(while(...) S\|for(...;...;...) S\)
> (
> - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y));
> |
> + if (!x)
> - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y)); else
> S2
> )
> @@
> type T, T2;
> type T1;
> T1 *x;
> T1 *y;
> identifier f;
> expression E,E2,E3;
> statement S,S2;
> @@
> - x = (T)kmalloc(sizeof(T1)*E,E2)
> + x = kzalloc(sizeof(T1)*E,E2)
> ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> when != \(while(...) S\|for(...;...;...) S\)
> (
> - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y)*E);
> |
> + if (!x)
> - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y)*E); else
> S2
> )
> @@
> type T, T2;
> type T1;
> T1 *x;
> T1 *y;
> identifier f;
> expression E2,E3;
> statement S,S2;
> @@
> - x = (T)kmalloc(sizeof(*y),E2)
> + x = kzalloc(sizeof(*y),E2)
> ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> when != \(while(...) S\|for(...;...;...) S\)
> (
> - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1));
> |
> + if (!x)
> - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1)); else
> S2
> )
> @@
> type T, T2;
> type T1;
> T1 *x;
> T1 *y;
> identifier f;
> expression E,E2,E3;
> statement S,S2;
> @@
> - x = (T)kmalloc(sizeof(*y)*E,E2)
> + x = kzalloc(sizeof(*y)*E,E2)
> ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> when != \(while(...) S\|for(...;...;...) S\)
> (
> - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1)*E);
> |
> + if (!x)
> - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1)*E); else
> S2
> )
> @ disable neg_if, mult_comm @
> type T, T2;
> expression x;
> identifier f;
> expression E0,E1,E2,E3;
> statement S,S2;
> @@
> - x = (T)kmalloc(E0 * E1,E2)
> + x = kzalloc(E0 * E1,E2)
> ... when != \(f(...,x,...)\|<+...x...+>=E3\)
> when != \(while(...) S\|for(...;...;...) S\)
> (
> - if ((x!=NULL)&&...) memset((T2)x,0,E1 * E0);
> |
> + if (!x)
> - if ((x!=NULL)&&...) memset((T2)x,0,E1 * E0); else
> S2
> )
> // ---------------------------------------------------------------------
> @@
> expression E;
> statement S;
> @@
> kzalloc(...)
> ...
> if (E) S
> - else { }
> // ---------------------------------------------------------------------
> // ---------------------------------------------------------------------
> @@
> expression E1,E2,E3;
> @@
> - kzalloc(E1*sizeof(E2),E3)
> + kcalloc(E1,sizeof(E2),E3)
> @@
> expression E1,E3;
> type T;
> @@
> - kzalloc(E1*sizeof(T),E3)
> + kcalloc(E1,sizeof(T),E3)
> @@
> expression E1,E2,E3,E4;
> @@
> - kzalloc(E1*E2*sizeof(E3),E4)
> + kcalloc(E1*E2,sizeof(E3),E4)
> @@
> expression E1,E2,E3;
> type T;
> @@
> - kzalloc(E1*E2*sizeof(T),E3)
> + kcalloc(E1*E2,sizeof(T),E3)
> @@
> expression E1,E2,E3,E4;
> @@
> - kzalloc(sizeof(E3)*E1*E2,E4)
> + kcalloc(E1*E2,sizeof(E3),E4)
> @@
> expression E1,E2,E3;
> type T;
> @@
> - kzalloc(sizeof(T)*E1*E2,E3)
> + kcalloc(E1*E2,sizeof(T),E3)
> @@
> constant E1;
> expression E2,E3;
> @@
> - kzalloc(E1*E2,E3)
> + kcalloc(E1,E2,E3)
>
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/media/bcm2048/radio-bcm2048.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
> index 5382506..c68fa4a 100644
> --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
> @@ -1792,7 +1792,7 @@ static int bcm2048_get_rds_data(struct bcm2048_device *bdev, char *data)
>  		goto unlock;
>  	}
>
> -	data_buffer = kzalloc(BCM2048_MAX_RDS_RADIO_TEXT*5, GFP_KERNEL);
> +	data_buffer = kcalloc(BCM2048_MAX_RDS_RADIO_TEXT, 5, GFP_KERNEL);
>  	if (!data_buffer) {
>  		err = -ENOMEM;
>  		goto unlock;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/556953cddf889e94753d5fd09201cc94dbe201f6.1425211236.git.navyasri.tech%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

