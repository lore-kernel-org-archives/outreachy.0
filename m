X-GM-THRID: 6804511537677467648
X-Received: by 2002:adf:e4ca:: with SMTP id v10mr34852149wrm.305.1584358345541;
        Mon, 16 Mar 2020 04:32:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:498c:: with SMTP id r12ls9169336wrq.10.gmail; Mon, 16
 Mar 2020 04:32:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vscs3k0j8xCLkZa0J5k+wT4BYAptqTTft+0dyDw7wXuumRoT0k8/pBYAQA3pqHmsvDrcPNE
X-Received: by 2002:a5d:498f:: with SMTP id r15mr14367769wrq.81.1584358344468;
        Mon, 16 Mar 2020 04:32:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584358344; cv=none;
        d=google.com; s=arc-20160816;
        b=NfARWlfsFw5LCTueC2jhb/ljObMZXYmnp2BnzFnXqvvDINxFyNDoJ9Qr99zy0AsOwL
         3UyAF+3Dv6ANQC16q99XROyhUsaAGS2wr6MP8ZToiCUo7vvBfVT/D326QHY1ZFAEXeb4
         8Dquc3ru/zhVm1XPrbbpWHnRq895hZ5Wmiv0+ISC1FoFs6GBrZ1K+Qq7tszAtOFIKFH5
         94VYeUq8GVphpcwZCLpRneS6lgLxpEYIVMaMzqG8FUo6EMGElMLVU1zXb3s67OUZRX5L
         KzIDfVe3K4ATOhoqK35xqV4zlw3VcgqorIX3jzAMJgTsgHc/fzwNvjbGs1BIKeM1FSn1
         pHoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=N3pXI7T+DvRetfhxvDu0vRu+dRdltJ/iUkxZwkqYW1M=;
        b=cg2Ky/gjpw1X3Vd7Zpw/bXh05T/QfwAHS/FCGTw4f7SxY5k8XojNtCVvlyuNFMiCov
         gy/sWhvmAn1NlLaFJuMjZ+rul25DCyypMvd6IEN5DpEoz5taR5boHBb1O9DOankRoqRZ
         LYhnHACoFajoXWW41YxTfotQ242AyRNwtvppQoC/0NYYP7oNPVeCv63oSVne5pLp6F13
         VPW6Up7h19YI+zXwyJm356RvmOHTQf4gOhhL93yS8I60Ej/cFHY9FHFVPXwxcID0hPFe
         fKXzNlGMt9SN/qP0pTwWb++F1JR+QF0ky25aDdlKNUTGpDDmrywnJFJ0LgowAUQHOL3p
         VRmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of helen.koike@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=helen.koike@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Return-Path: <helen.koike@collabora.com>
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id a18si209623wra.0.2020.03.16.04.32.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Mar 2020 04:32:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.koike@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.koike@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=helen.koike@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: koike)
	with ESMTPSA id CE076291A6E
Subject: Re: [PATCH 0/2] Staging: media: rkisp1: trim diagram in comments to
 80 chars
To: Enrique Vargas <jevargas@seas.upenn.edu>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
References: <cover.1584298430.git.jevargas@seas.upenn.edu>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <c4e2ce5d-848c-3a97-9260-57c67d94cd6e@collabora.com>
Date: Mon, 16 Mar 2020 08:32:18 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <cover.1584298430.git.jevargas@seas.upenn.edu>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Enrique,

On 3/15/20 3:59 PM, Enrique Vargas wrote:
> *** BLURB HERE ***

I think you forgot to fill out the cover letter.

Please, see more information on https://kernelnewbies.org/PatchSeries

Let me know if you have any questions.

Regards,
Helen

> 
> Enrique Vargas (2):
>   reduce comments width bellow 80 chars
>   eliminate trailing whitespaces on comments
> 
>  drivers/staging/media/rkisp1/rkisp1-dev.c | 54 ++++++++++++++++-------
>  1 file changed, 37 insertions(+), 17 deletions(-)
> 

