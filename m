X-GM-THRID: 6202847107501522944
X-Received: by 10.180.106.197 with SMTP id gw5mr242335wib.7.1444216523057;
        Wed, 07 Oct 2015 04:15:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.126.5 with SMTP id mu5ls122935wib.17.gmail; Wed, 07 Oct
 2015 04:15:21 -0700 (PDT)
X-Received: by 10.180.35.132 with SMTP id h4mr4704982wij.5.1444216521843;
        Wed, 07 Oct 2015 04:15:21 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c7si76832wiy.3.2015.10.07.04.15.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 04:15:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,648,1437429600"; 
   d="scan'208";a="181537385"
Received: from 089-101-192072.ntlworld.ie (HELO hadrien.local) ([89.101.192.72])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 07 Oct 2015 13:15:21 +0200
Date: Wed, 7 Oct 2015 12:15:11 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: most: video: Changed the
 return value integer to NULL
In-Reply-To: <20151007101433.GA50144@ubuntu>
Message-ID: <alpine.DEB.2.10.1510071214591.2533@hadrien>
References: <20151007101433.GA50144@ubuntu>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 7 Oct 2015, Shivani Bhardwaj wrote:

> Fixed the sparse warning : Using plain integer as NULL pointer, by
> changing the return value of function *get_aim_dev(struct, int) from 0
> to NULL.

If you want, you could try doing this sort of thing with Coccinelle.  An
easy case is the assignment case.  The following would find an assignment
where the type is a pointer and the value is 0:

@@
type T;
T *x;
@@

x =
- 0
+ NULL

This makes a rule where T is an arbitrary type and x is an expression that
has type pointer to type T.  Then it searches for an assignment where
there is this pointer typed expression on the left side and 0 on the right
side, and then makes the change.

The function return case is a bit more complicated, because you have to
find the function return type and the return statement, which are not
right next to each other.  But it can be done as well.

You can find out more at the Coccinelle web site: coccinelle.lip6.fr.
There are some tutorials at the papers and slides link.

julia

>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/most/aim-v4l2/video.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/most/aim-v4l2/video.c b/drivers/staging/most/aim-v4l2/video.c
> index d968791..8333245 100644
> --- a/drivers/staging/most/aim-v4l2/video.c
> +++ b/drivers/staging/most/aim-v4l2/video.c
> @@ -430,7 +430,7 @@ static struct most_video_dev *get_aim_dev(
>  		}
>  	}
>  	spin_unlock(&list_lock);
> -	return 0;
> +	return NULL;
>  }
>
>  static int aim_rx_data(struct mbo *mbo)
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151007101433.GA50144%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

