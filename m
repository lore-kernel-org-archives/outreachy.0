X-GM-THRID: 6203392298463526912
X-Received: by 10.112.147.7 with SMTP id tg7mr1891696lbb.16.1444340095738;
        Thu, 08 Oct 2015 14:34:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.184.166 with SMTP id ev6ls225045wic.28.canary; Thu, 08 Oct
 2015 14:34:55 -0700 (PDT)
X-Received: by 10.194.156.193 with SMTP id wg1mr1879269wjb.3.1444340095381;
        Thu, 08 Oct 2015 14:34:55 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id c1si2714wiv.3.2015.10.08.14.34.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 14:34:55 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0MbtcA-1a0BnE3zIE-00JFhO; Thu, 08 Oct
 2015 23:34:55 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lent: add missing __user __user annotation
Date: Thu, 08 Oct 2015 23:34:54 +0200
Message-ID: <6819793.vktgQQm1tK@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1444339813-12063-1-git-send-email-ciorneiioana@gmail.com>
References: <1444339813-12063-1-git-send-email-ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:zMw+OpGX5FQse2GGJ8ppxDb9b82wsVqX1yTe9lrREJASHzSqv+2
 R8PGMToGXyBUZEaflBtVjNuVjZ3UrUeAvTgAgQGmJaiRitIuoTqJPshnAPyvjDCSl/A3adg
 8+Sc0OyQb7ARS/FHyQaH1m5D/0ri0Vc2f6vLgGaksXacoU/wxvasqXRjJrXl9VVMdpxhX1A
 JwOIIn8ynxVWFn4nSsoRA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:9epINvLaW0M=:SnDmWyVaa68CfskqFIPx+V
 WQOhMkApKj8Cm6HYn5LY756AG6UIn/IUuo2FmyDYiiMLGGlzf6PZBSq0npPDiZLl3YFEWZ26p
 ss/voFG0+V0ahEW4VWGo1Uq849VWVBlIJOEw0z6kdEwFjGmR8SEniyQIlTxILpwdWfkuTfVGk
 e0i5ZNxtVoZmW0EDSoTSquqt2N45KtETuiR6vJNxD9yeJrS5J4gZQwcVKkT0+Ygs47LKYitiS
 xlVe7dqMTckpZazerfP5q0rhXI02NSRAXx+lAQofnGldzQeAIJxhRctgyZxm2uhKS7clv/ZBN
 ciOpMRPzlqZ9b6FQiEOO8uAZ6ekk6l2eFUSSyQa1iLnmLKlGk5n165O0VhXGLbKUHEyjC9B7e
 xJCTa6/uRNyUa6iY4baG5vAvVpNETvye99DNb+C5PToZGiAeaqL2rkzDINn5mitarwAgVuEIV
 Y+B1jBcnDWxmcKW+QTIFsxjnLsQlkTuZKBzDd5lv0oVsU+k/pUf0YKr5lHzR/0dGcOBuoKb9k
 QpRy0e43MxjJPNMnN/HdW7YW8DNi/h1c7+Qr9mzE6iCHM+Tz58I+nXTgVz41NCU+k5gysgbop
 tGfC0wy9RRNV+raFmaVly01Hsr+hugO+FmSUFxWlY+0tYSbPS00kNDlIECteg/AEueh+2TZAh
 RwJeNsprIl0OzAMMVRfrhEy89o4oCP/zLko1Uv5a3a7K5l7c6Wkiev79VwS1+Br3hyjx5dmFA
 spSC61E7wdkgSC0K

On Friday 09 October 2015 00:30:13 Ioana Ciornei wrote:
> Add missing __user annotation when using copy_{to/from}_user() to indicate that is
> a pointer from userspace and that it should not be derefenced.
> Also, remove sparse warnings such as:
> 
> drivers/staging/lustre/lnet/selftest/console.c:1474:26: warning: incorrect type in argument 1 (different address spaces)
>   1 drivers/staging/lustre/lnet/selftest/console.c:1474:26:    expected void [noderef] <asn:1>*to
>   2 drivers/staging/lustre/lnet/selftest/console.c:1474:26:    got struct sfw_counters_t [usertype] *[assigned] sfwk_stat
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>

Your subject line has a duplicate "__user" in it.

> ---
>  drivers/staging/lustre/lnet/selftest/console.c | 44 +++++++++++++-------------
>  1 file changed, 22 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
> index 024aaee..7ba9022 100644
> --- a/drivers/staging/lustre/lnet/selftest/console.c
> +++ b/drivers/staging/lustre/lnet/selftest/console.c
> @@ -384,9 +384,9 @@ lstcon_sesrpc_readent(int transop, srpc_msg_t *msg,
>  	case LST_TRANS_SESQRY:
>  		rep = &msg->msg_body.dbg_reply;
>  
> -		if (copy_to_user(&ent_up->rpe_priv[0],
> +		if (copy_to_user((void __user *)&ent_up->rpe_priv[0],
>  				     &rep->dbg_timeout, sizeof(int)) ||
> -		    copy_to_user(&ent_up->rpe_payload[0],
> +		    copy_to_user((void __user *)&ent_up->rpe_payload[0],
>  				     &rep->dbg_name, LST_NAME_SIZE))
>  			return -EFAULT;
>  

This looks wrong. I have not checked what is actually going on here, but
you should never add a __user cast to a variable that is accessed
through a kernel pointer. Can you find out where the ent_up variable
is and why it is not marked __user itself?

	Arnd

