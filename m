X-GM-THRID: 6463802191249408000
X-Received: by 10.28.133.68 with SMTP id h65mr644177wmd.1.1505056934675;
        Sun, 10 Sep 2017 08:22:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.21.66 with SMTP id 63ls759940wmv.12.gmail; Sun, 10 Sep 2017
 08:22:13 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBlC2G0q2lFmu/1NbIgtIQaL//8vjmPnYoJRwD/O4yFxpjXF/+A+LmbO34OWPhr8qmryWCb
X-Received: by 10.28.9.12 with SMTP id 12mr584745wmj.7.1505056933759;
        Sun, 10 Sep 2017 08:22:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505056933; cv=none;
        d=google.com; s=arc-20160816;
        b=XvtkkPRO4U2bugs0JXH+fhygdQ+e2dsT4PAZxIFPeubN2o+YPbCCUtucw4Ca3x3u0n
         30nXo5JjiM0E8HoJG8ob8Q3cyX8tuHZYZFmrohmTi200LpGBfAHVBce6WaoSfzExLvhi
         L2MN0FQaWz22a3ML9ymf1ailxSNejG3RVzUKo4VELqaogVLgvpE2Ga11N+rEt/tmFNF+
         aBFhW1pSeZVEE9o3aaQSP2Wl1tyi/FYsCi40R/B/USK2a0RgbFVZ/FPT9bn0Av5Z1iXX
         YnxOlgohfSWoSbnVrSaCirhs3jbe1EIXLVxvxq6opmfzFPUGHpl+XkMDuPYj6oKX31IA
         PKTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=VjINslrPeeq6B0N0d+9dcYvUFUbzVvCdTEvr+a4ocSc=;
        b=SgTtycDvAuuueK0Ugh5Mnyh31AyJapjTdy91hp9liyczIYeHPfyC/ROHLsq+TLXrnO
         61ql1/zn47qD1fElZXZ2NlsoJWIcU8xicqOgMTfhH2ytxlmj4aoUxPE696TgMyeQyGIt
         nWu1KkOrhwcrLyZlrYIz8XnidVcbn07kgxbfrX/oAin1g2C/8uzxpsU+Rqk0Cd9FZAoS
         1HjlfUZUzK0LCa/F008FTvwfe5axcvH4e5eVE4wAC0Jrlm6IF2mwkzgmsir8dBgmoX/D
         uBUfCUukqWzi0JBmCrSxElk7KogXczckkY+LzpaqMWoCToRUfAE719j+dyQmyahTqyKE
         Ry2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id e135si384971wmg.6.2017.09.10.08.22.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 08:22:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.153.224.169])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7E332978;
	Sun, 10 Sep 2017 15:22:08 +0000 (UTC)
Date: Sun, 10 Sep 2017 15:58:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: outreachy-kernel@googlegroups.com, w.d.hubbs@gmail.com,
	chris@the-brannons.com
Subject: Re: [PATCH V3] Staging: speakup: Replace symbolic permission
Message-ID: <20170910135855.GC10121@kroah.com>
References: <20170910023435.GA24707@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170910023435.GA24707@meghana-HP-Pavilion-Notebook>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Sun, Sep 10, 2017 at 08:04:35AM +0530, Meghana Madhyastha wrote:
> Replace S_IRUGO by 0444 in module parameter declaration. 0444 is more
> readable and matches the style used in other declarations nearby.
> 
> Problem found using checkpatch.
> 
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> 
> Changes in v2:
>   - Make the commit message more clearer and the title more concise
> 
> Changes in v3:
>   -Mention the changes below --- 

I have two different v3 patches from you that both do the same thing,
yet they have two different subjects?

totally confused, please send a v4 with the "correct" one you wish to
submit.

thanks,

greg k-h

