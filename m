X-GM-THRID: 6470854058702798848
X-Received: by 10.28.7.85 with SMTP id 82mr1254364wmh.8.1507047361991;
        Tue, 03 Oct 2017 09:16:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.93.144 with SMTP id r138ls2831707wmb.12.canary-gmail; Tue,
 03 Oct 2017 09:16:01 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDMOtdJLZPh7nWs+/l3+yw96pNa0sOr9VMucOkW2rF0hqRMG2VKmFGu0YUMwAwWd+vUmBLx
X-Received: by 10.28.88.197 with SMTP id m188mr2289639wmb.4.1507047361188;
        Tue, 03 Oct 2017 09:16:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507047361; cv=none;
        d=google.com; s=arc-20160816;
        b=tRJxtTH9TZGJsxZ9XBlZETfRLYFTmkT02smtvwO+qbvEfcRwqrcjlJpmAyzV3CLtzT
         YD0GCcvnD2TzDQoM92jyC36cS1A+sU7p5W+7nZXpHdJREoZy5atelVIZdzHPksxN/CIx
         23JoZpKJg2wot1ctxGINvoDUwZgDMaTzUoOQhZTcaB6k18bO/7pI9IaLcB+ykcCtk3tj
         C4taLpRDEEPGYAZ1C/BaMLFDFZjBFTkXHVdLNClOa/r8Pi/VMAxzUzKudSuUJ23ZgIh2
         Hh6Z4Gu9yyTc4y2dERRQdLU/rIG247HsMPHF1i115yzidSkp6dyNQBtG+JRMqEnmGltX
         pNaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=N5mHjT0DWPGLblVC56pdGiru5Syj+zBuB+dylOdPrqM=;
        b=MGLQvwi26wqMfRh1H4jPAZrbiub/nKLwzNnrPjNKq0pHodKLLM0UEpi0oxYqkIiJqi
         OgXK/dv3MlyALSGwYdO6Pq5RzDcIVMH+F2/MvhkZqUCNvGhcXf5OaGjeItoTSiXCW1pw
         wtzfm9Djmpcar+pMK/OS0wZmu4cxmtfC9aQmBRvP/NT78plZVgbOi5JUs2Tkko0Z+K5a
         9/+jFjoHWXBQLHKaj/LfCQIVIu4/xVJQqdiRMALDaudT1AcKWplftcjR3VOaCb0Y4gYy
         T7WaQA+2D6L0jwEZ5ZeHLc/5RPA6iXEwrIvv8kzxH/uXvAeINC4HSvzmHafogS7N0YoP
         ONYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id p200si1675908wmg.4.2017.10.03.09.16.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 09:16:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 89D07491;
	Tue,  3 Oct 2017 16:15:59 +0000 (UTC)
Date: Tue, 3 Oct 2017 18:16:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Keerthi Reddy <keerthigd4990@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: speakup: replace
 'S_IRUGO' macro with octal 0444
Message-ID: <20171003161608.GA24755@kroah.com>
References: <20170930154809.GA5525@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170930154809.GA5525@manoharreddy>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Sat, Sep 30, 2017 at 09:18:09PM +0530, Keerthi Reddy wrote:
> Everyone knows what 0444 means. But one has read through docs
> to understand the meaning of 'S_IRUGO'.
> 
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
> v2: make the same change in remaining files too.

Doesn't apply to my tree at all :(

