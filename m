X-GM-THRID: 6751912583325810688
X-Received: by 2002:aca:dd07:: with SMTP id u7mr5636049oig.106.1572054633196;
        Fri, 25 Oct 2019 18:50:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5f56:: with SMTP id t83ls2751167oib.5.gmail; Fri, 25 Oct
 2019 18:50:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzEhTVUIp+Z+lT2iASXht1q6f6hApMdq2sOZlTYAnC7fq9hqZ5Sbyac0z2QNT7eYdp1ih2C
X-Received: by 2002:aca:cc10:: with SMTP id c16mr145141oig.85.1572054632141;
        Fri, 25 Oct 2019 18:50:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572054632; cv=none;
        d=google.com; s=arc-20160816;
        b=SzBRJUtYVuj3F0nez6+f0obEkwilCZI03TK8CrQtGojgH71617UUtzE3OscODw2EMX
         HNIgXauRKveL0S/55OC73rMs67W5cYKAzXHG1en/e9BlQ7/9jrldez9BX6QFS07xEPjx
         ZIb/yTdRkYssHsilgTB507itDcErxvW98ubZOs6JAqgYCxhnHKZ80XNsgsrRY3VsEmx+
         dRQj5N2dmFvUQ1DM9JbzQR7CtODlnpgMVT5LgLilKBwrQYrrYrUvS7uNC3Xu43uE2Nqk
         0E9do7LblRIPa+a9coXY6r2a0ia/NeD8Ulnfc5NMh1o9lvGdfF48XO/fJ2o4O8r84VBu
         quyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=nLnbMA2/XxTw0wtA0YZjA7LGKQFlH35X0hEtxxx70eo=;
        b=OlgBmKaTm0AyRs7d2Izabsj645ntdmAjWPXcXSCwP9WGuaRJevAn7rBtd2uQJSPIHa
         yVa8v2UzbhI/5HVjr5ct+KCBcMKlApskGxQATvyoz0hBTzMLC+kTNok0IjU17Bm8Cqgb
         WKO5WfixCAGhWjZ591saP3FSO+CXZT+6txyjzccHe4zuIEVSjOZecd+X1bveGzWPnpDk
         eTOAiQQG5q+CvgLutcjG1YchMU/OdLd6pD0yWuQ3BJK64V3yu4Tu0M005z/VyFdCmY35
         uUbYgxD7U0du8qUW5pYM1C9O7oLE15GBH4Q6gJqayhAev/dvd7Ox+hDMCD87peMfO6zP
         IHVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.191 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0191.hostedemail.com. [216.40.44.191])
        by gmr-mx.google.com with ESMTPS id k184si190684oih.0.2019.10.25.18.50.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 18:50:32 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.191 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.191;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.191 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 45A38180A55F2;
	Sat, 26 Oct 2019 01:50:31 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 80,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:599:966:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2196:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3872:4321:4385:4605:5007:6119:7903:9010:10004:10400:11026:11232:11658:11914:12043:12296:12297:12438:12740:12760:12895:13069:13311:13357:13439:14096:14097:14659:14721:21080:21627:30012:30054:30070:30091,0,RBL:23.242.70.174:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:23,LUA_SUMMARY:none
X-HE-Tag: earth15_5ba9bbbc1535a
X-Filterd-Recvd-Size: 2324
Received: from XPS-9350 (cpe-23-242-70-174.socal.res.rr.com [23.242.70.174])
	(Authenticated sender: joe@perches.com)
	by omf08.hostedemail.com (Postfix) with ESMTPA;
	Sat, 26 Oct 2019 01:50:29 +0000 (UTC)
Message-ID: <25960b2a5dfe3f5f2c6579ef718f90a139ba84d7.camel@perches.com>
Subject: Re: [RESEND PATCH 1/2] staging: rtl8712: Fix Alignment of open
 parenthesis
From: Joe Perches <joe@perches.com>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>, 
	outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>, Florian Schilhabel
	 <florian.c.schilhabel@googlemail.com>, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org
Date: Fri, 25 Oct 2019 18:50:25 -0700
In-Reply-To: <e3842148b6dd01c47678f517a07772c75046c50f.1572051351.git.cristianenavescardoso09@gmail.com>
References: <cover.1572051351.git.cristianenavescardoso09@gmail.com>
	 <e3842148b6dd01c47678f517a07772c75046c50f.1572051351.git.cristianenavescardoso09@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2019-10-25 at 22:09 -0300, Cristiane Naves wrote:
> Fix alignment should match open parenthesis.Issue found by checkpatch.

Beyond doing style cleanups, please always try
to make the code more readable.

> diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
[]
> @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
>  		precvbuf->ref_cnt = 0;
>  		precvbuf->adapter = padapter;
>  		list_add_tail(&precvbuf->list,
> -				 &(precvpriv->free_recv_buf_queue.queue));
> +			      &(precvpriv->free_recv_buf_queue.queue));

Please remove the unnecessary parentheses too

>  		precvbuf++;
>  	}
>  	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
>  	tasklet_init(&precvpriv->recv_tasklet,
> -	     (void(*)(unsigned long))recv_tasklet,
> -	     (unsigned long)padapter);
> +		     (void(*)(unsigned long))recv_tasklet,
> +		     (unsigned long)padapter);

It's probably better to change the recv_tasklet function
declaration to
use the more common style of

static void recv_tasklet(unsigned long priv)

and do the cast in the recv_tasklet function.



