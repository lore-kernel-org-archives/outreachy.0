X-GM-THRID: 5549458456576
X-Received: by 10.112.224.12 with SMTP id qy12mr2280182lbc.10.1425252284596;
        Sun, 01 Mar 2015 15:24:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.98 with SMTP id l2ls14711lam.28.gmail; Sun, 01 Mar 2015
 15:24:43 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr3423225lbb.13.1425252283085;
        Sun, 01 Mar 2015 15:24:43 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o3si552848wib.2.2015.03.01.15.24.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 15:24:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,672,1418079600"; 
   d="scan'208";a="101721020"
Received: from wnpgmb0903w-ds01-92-71.dynamic.mtsallstream.net (HELO unknownE0F847206056) ([142.161.92.71])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Mar 2015 00:24:41 +0100
Date: Sun, 1 Mar 2015 17:24:38 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Fix assignment in
 if condition checkpatch error
In-Reply-To: <1425242387-10440-1-git-send-email-dilekuzulmez@gmail.com>
Message-ID: <alpine.DEB.2.10.1503011724030.2545@hadrien>
References: <1425242387-10440-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 1 Mar 2015, Dilek Uzulmez wrote:

> Fix checkpatch.pl error assignment in if condition and assign variable
> before if condition.
>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/lustre/include/linux/libcfs/libcfs_fail.h | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_fail.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_fail.h
> index eea55d9..ae6901b 100644
> --- a/drivers/staging/lustre/include/linux/libcfs/libcfs_fail.h
> +++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_fail.h
> @@ -77,10 +77,9 @@ enum {
>  static inline int cfs_fail_check_set(__u32 id, __u32 value,
>  				     int set, int quiet)
>  {
> -	int ret = 0;
> +	int ret = __cfs_fail_check_set(id, value, set);
>
> -	if (unlikely(CFS_FAIL_PRECHECK(id) &&
> -		     (ret = __cfs_fail_check_set(id, value, set)))) {
> +	if (unlikely(CFS_FAIL_PRECHECK(id) && ret)) {

This inverses the order of __cfs_fail_check_set and CFS_FAIL_PRECHECK.
You need to argue that this is safe to do, if that is indeed the case.

julia

>  		if (quiet) {
>  			CDEBUG(D_INFO, "*** cfs_fail_loc=%x, val=%u***\n",
>  			       id, value);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425242387-10440-1-git-send-email-dilekuzulmez%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

