X-GM-THRID: 6389239074104803328
X-Received: by 10.28.137.200 with SMTP id l191mr516533wmd.5.1487611034309;
        Mon, 20 Feb 2017 09:17:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.203 with SMTP id u194ls580768lja.20.gmail; Mon, 20 Feb
 2017 09:17:13 -0800 (PST)
X-Received: by 10.46.20.27 with SMTP id u27mr2358483ljd.4.1487611033092;
        Mon, 20 Feb 2017 09:17:13 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id q4si969223wma.3.2017.02.20.09.17.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Feb 2017 09:17:13 -0800 (PST)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=jhovold@gmail.com
Received: by mail-lf0-x244.google.com with SMTP id 90so1617775lfr.3
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Feb 2017 09:17:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=omcbm/un2v2Rjb06q/TDdTRal6JNFHmaotNe1cHE9sY=;
        b=A0ipW5lv8w9Iipp4nVQ8MLcJJTMnCMFv+oc00fJ1OubXrlmfsfGKT8rJ9aLViPs3pq
         2Fp9hSihrDOmpdaPfVjREnERyckBGxSTdmGKhi8DWEpzxQ/zCHtJ1XOTU/8AB4dZ4jJP
         UuNBp3wc1YGGjZPoQ15HZ/CN8fEUTVtlRLzSd5lnSTF8b2JqDDgyQTChirV84O8lZRyG
         iu+FiH+zJKHpI/Ti0RqLk2BWdYAER+92Apy2x1Xiyzi2gdkHJgX0pO+DxIpTLlM1rTCn
         9/lAy0blryQ1jkiSGP72cksUtdvNCg2bljNXTByn/LUywRVd4FQ6aA5n/HN/kC89kwl5
         H7gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=omcbm/un2v2Rjb06q/TDdTRal6JNFHmaotNe1cHE9sY=;
        b=DBXyV+exvZK1wpq0jeJ/6AQX5n4L5HOuw05Izo4s2ON/KfIs9nCz2Nxd5ZAjR1VXiu
         MeOeXfmDEdpr6lfoEsUkN6gcH7x3NOBl+qtaDke+WB2Zo2YI41gmIu0PwOMvHXO5MmAM
         iEWhXx1SRVBt9zEyKD+bcJod/RlZtkF5CtMnDtE82ghEJhTwRzWt6a9Ha1tKgRhpvDVh
         vwI3y+nKXrXSRwvvew4uVCfxG2k9eRPQSa3mJ6qOaBIUgxF046jrIZBaUZV3Y6h73RFR
         4bisnXcfmP1W6p1XqkLzsO1qTUO8lJ9hEqkSl6+Tcbem7KEZpRNuzFV5yq/52rXRYshK
         0Ikg==
X-Gm-Message-State: AMke39l5UDoFJ9+1zxBd22VG0QBB5vTWzJHHXYZh2EPUYM0BPLrH+nyUIZ0mIhsWCalgig==
X-Received: by 10.46.9.143 with SMTP id 137mr5602115ljj.132.1487611032834;
        Mon, 20 Feb 2017 09:17:12 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra ([84.216.234.102])
        by smtp.gmail.com with ESMTPSA id w17sm5329732ljd.54.2017.02.20.09.17.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Feb 2017 09:17:12 -0800 (PST)
Sender: Johan Hovold <jhovold@gmail.com>
Received: from johan by xi.terra with local (Exim 4.88)
	(envelope-from <johan@kernel.org>)
	id 1cfraJ-0002fn-M8; Mon, 20 Feb 2017 18:17:11 +0100
Date: Mon, 20 Feb 2017 18:17:11 +0100
From: Johan Hovold <johan@kernel.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org
Subject: Re: [PATCH v2] staging: greybus: loopback_test: Fix open error path
Message-ID: <20170220171711.GA10245@localhost>
References: <20170220171028.GA32505@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170220171028.GA32505@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 20, 2017 at 10:40:28PM +0530, sayli karnik wrote:
> Change array index from the loop bound variable to loop index.
> If a poll file fails to open for any intermediate device, all poll files with
> fds of devices from 0 upto that device must be closed in the open_poll_files()
> function. The current code only closes the poll file with the most recent fd
> allocated, and at times tries to close the same file multiple times.
> 
> Detected by coccinelle:
> 
> @@
> expression arr,ex1,ex2;
> @@
> 
> for(ex1 = 0; ex1 < ex2; ex1++) { <...
>   arr[
> - ex2
> + ex1
>   ]
>   ...> }
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
> v2:
> Made the subject and changelog more concise

Thanks for the update.

Reviewed-by: Johan Hovold <johan@kernel.org>

Johan

