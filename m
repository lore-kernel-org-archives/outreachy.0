X-GM-THRID: 6393330913423392768
X-Received: by 10.129.69.37 with SMTP id s37mr4583526ywa.147.1488694532456;
        Sat, 04 Mar 2017 22:15:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls1599707ote.1.gmail; Sat, 04 Mar 2017
 22:15:32 -0800 (PST)
X-Received: by 10.200.48.218 with SMTP id w26mr3691670qta.42.1488694532130;
        Sat, 04 Mar 2017 22:15:32 -0800 (PST)
Received: by 10.55.9.18 with SMTP id 18msqkj;
        Sat, 4 Mar 2017 16:52:09 -0800 (PST)
X-Received: by 10.46.83.7 with SMTP id h7mr1602005ljb.24.1488675128716;
        Sat, 04 Mar 2017 16:52:08 -0800 (PST)
Return-Path: <jsimmons@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:770:15f::2])
        by gmr-mx.google.com with ESMTPS id y19si935277wmd.0.2017.03.04.16.52.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 16:52:08 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of jsimmons@infradead.org designates 2001:770:15f::2 as permitted sender) client-ip=2001:770:15f::2;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org;
       spf=pass (google.com: best guess record for domain of jsimmons@infradead.org designates 2001:770:15f::2 as permitted sender) smtp.mailfrom=jsimmons@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=mkPa8aqrs2+XekemzApG5cxEmwlf7pQJ+8CiOp3+lNA=; b=myW5PzJZnacCTVHcusAJdk6o0
	TWmsX218dWC+kiEV6kUArasv/Pw7GnLD29D6U0rS0bzloUSGwTaf1m/s2/mh2qb85OLV6BhI1w4NH
	6RCQUfdW/zGuTIkiG+OMhLzmU9iLxpZ4tLiY0GGdn51aYxQw/xUj885p0O6l/dx5WYaCCiqDClWOO
	ic6K6QOu0+5LpApyPY9jaciXLJHc5qlG4G353A+CL5nOSwZSSUh5xDFshakcLYdMuauDOCTrXiviM
	Ho7LF3U/IYHG7MgdiSHnRBqFVOCgO1fDiO0O+EeK7u5ZOkk6YXKgG4jigRBsJF+nms8cKviyd8FEf
	volMBYH3Q==;
Received: from jsimmons (helo=localhost)
	by casper.infradead.org with local-esmtp (Exim 4.87 #1 (Red Hat Linux))
	id 1ckKP1-0002ze-Bw; Sun, 05 Mar 2017 00:52:01 +0000
Date: Sun, 5 Mar 2017 00:51:59 +0000 (GMT)
From: James Simmons <jsimmons@infradead.org>
To: simran singhal <singhalsimran0@gmail.com>
cc: Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org, 
    florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org, 
    linux-kernel@vger.kernel.org, oleg.drokin@intel.com, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v5 2/5] staging: lustre: Remove unnecessary cast on void
 pointer
In-Reply-To: <1488641453-22575-3-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.LFD.2.20.1703050051480.10898@casper.infradead.org>
References: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com> <1488641453-22575-3-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20170305_005159_437271_41FBE69B 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.1 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 NO_RELAYS              Informational: message was not relayed via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]


> The following Coccinelle script was used to detect this:
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
> (
>   *((T *)e)
> |
>   ((T *)x)[...]
> |
>   ((T*)x)->f
> |
> - (T*)
>   e
> )
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>

Reviewed-by: James Simmons <jsimmons@infradead.org>

> ---
>  drivers/staging/lustre/lustre/lmv/lmv_obd.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> index 271e189..09b46924 100644
> --- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> +++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> @@ -640,7 +640,7 @@ static int lmv_fid2path(struct obd_export *exp, int len, void *karg,
>  	int			remote_gf_size = 0;
>  	int			rc;
>  
> -	gf = (struct getinfo_fid2path *)karg;
> +	gf = karg;
>  	tgt = lmv_find_target(lmv, &gf->gf_fid);
>  	if (IS_ERR(tgt))
>  		return PTR_ERR(tgt);
> @@ -657,7 +657,7 @@ static int lmv_fid2path(struct obd_export *exp, int len, void *karg,
>  		struct getinfo_fid2path *ori_gf;
>  		char *ptr;
>  
> -		ori_gf = (struct getinfo_fid2path *)karg;
> +		ori_gf = karg;
>  		if (strlen(ori_gf->gf_path) +
>  		    strlen(gf->gf_path) > ori_gf->gf_pathlen) {
>  			rc = -EOVERFLOW;
> -- 
> 2.7.4
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
> 

