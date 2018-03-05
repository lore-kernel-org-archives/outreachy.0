X-GM-THRID: 6529221119652659200
X-Received: by 10.46.88.88 with SMTP id x24mr864560ljd.31.1520231241645;
        Sun, 04 Mar 2018 22:27:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.190.21 with SMTP id o21ls1562829lff.8.gmail; Sun, 04 Mar
 2018 22:27:20 -0800 (PST)
X-Google-Smtp-Source: AG47ELvkgGuD1mkgeJmiR+R30T0loSCiBkVu8DwnFkofmz7o/oFzUPRZmx2iuABNG4fogTEBzR98
X-Received: by 10.25.217.81 with SMTP id q78mr940143lfg.23.1520231240305;
        Sun, 04 Mar 2018 22:27:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520231240; cv=none;
        d=google.com; s=arc-20160816;
        b=Om9NlNKUe42vGrToB1lrF+rq+216zzOLm/lRIHxUsOpxkNE1lLph3tkkZaZMIRRBdG
         KrhLRmSwnjPfUP0PrmDGazMU0aNPztR/qfArsvxP/LYLyhs5QlmPPfRla1uzrCN/QzEG
         b7kO4C7LS8eud96Bput0dlp/LgXN/FO7HRGIm065Bk+G5JQ0BW7dBP3bptAKLS8iXFJM
         OkvGfg2LkW8jeBbcipW+8DubtezheFj42iT8RUfewKWh5y9MBVU4uqhv3j3vPvkNNt7S
         a8O9vrDOVleWU2NbC+TQl7v8eBxdvNy8BT4bSOP8sVATpi2PbihP9kheiXUuN11wh4HY
         sazw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=DIsKsUO2ttA7XtMr8Cl8RNfm5FyZ9XJwFiuJA5jBafU=;
        b=ZcbJsfhvXoEXkZGj0kqWiIcN+CSJzHS7ND2zHuLW9ziNomp1pRCP6zvFUNFe605jlI
         axk7zgmCWuycP5yd7ER7xCdxPif5wkwOrMScD7mXFz4UP6qUnfNWR0Lvn8Y7A1UNI0mk
         15u3Ddr4Jd1wsTaewQXtOYtsqJmt3x8lpTUUpWq9xXC6kSN9A4tnO+IlNda/+7zNniv5
         5eLNx5ccE7C15XPhDls/6lr0R4bO+dZosxQnDtLdJsANuBOQPC3ztX/NIjhOxml4C/+b
         rU4XWAFVznQi/HBC0uuy+3hnbZp6Cki+HfxJ92+N2UXIUeOzQL2pI3wD1TEEA7ShVs+8
         ijXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id v144si62354lfa.3.2018.03.04.22.27.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 22:27:20 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (smbcdgpass.hotspot.hub-one.net [213.174.99.145])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 44525138B;
	Mon,  5 Mar 2018 06:27:18 +0000 (UTC)
Date: Mon, 5 Mar 2018 07:27:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: irda: Replace printk() with appropriate
 net_*macro_ratelimited()
Message-ID: <20180305062719.GB13208@kroah.com>
References: <20180304223205.GA31416@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180304223205.GA31416@seema-Inspiron-15-3567>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Mon, Mar 05, 2018 at 04:02:06AM +0530, Arushi Singhal wrote:
> Replace printk having a log level with the appropriate
> net_*macro_ratelimited.
> It's better to use actual device name as a prefix in error messages.
> Indentation is also changed, to fix the  checkpatch issue if line is not
> exceding 80 characters.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c      | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)

Your subject line does not match the file you are changing :(

