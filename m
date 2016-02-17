X-GM-THRID: 6251883453427482624
X-Received: by 10.182.28.41 with SMTP id y9mr25814637obg.14.1455686181904;
        Tue, 16 Feb 2016 21:16:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.77.18 with SMTP id o18ls1326922igw.26.gmail; Tue, 16 Feb
 2016 21:16:21 -0800 (PST)
X-Received: by 10.107.29.20 with SMTP id d20mr1128658iod.29.1455686181659;
        Tue, 16 Feb 2016 21:16:21 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id 12si3536186pfb.1.2016.02.16.21.16.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 21:16:21 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fl4so4708507pad.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 21:16:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=Q71kF0pXZr9+g/y8u6iZ/ALKOSShWVzRetuPEd8fm/E=;
        b=quMytzDye07thSV8FmILjHaMTdxWzgq2ggVSFwBgg9eaIxQZ/7fFUvW2cA3MWnSLqY
         vJ6K03iRU/yf+l88Up7EO+3wTr54Wk5qHtekOsz6Yx1PREpMXRHiEHTBaMs7a+GrJMtc
         YBosV76+NZAXQDLV8WGVDT2nwkFekOhYWr1AuTRzjh/D5nN6ypvSfmZmJaPhEt2lrTtY
         o+j81rTHRPsbyBmT9DJ/DU7vGZWsOu10OU1gu3iHjZCqlZM+/etCwvLD6Vh2m+SvrG9O
         9eKAh97XCXDnPeGkRriJf6odzdlVxSlWwZ7YWL6BvsED4YkJ624wzwXRXNKJmNWk+qiB
         F0Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=Q71kF0pXZr9+g/y8u6iZ/ALKOSShWVzRetuPEd8fm/E=;
        b=NN9L4iAsRup/woFMpcp34TtxpwBkAT8+qMWUTc9hCPK78sdeqdVuqvZv4+GxrBprgo
         brK7poH2RnrU/6WifYcLO1b6I+dKiQKsfKhqqpZHjlTO/xTQSGLOznRUnN0HZDkRGkfY
         GswlbEt+bho3y+dW9DFFnUtQ6sFFtJOQA5msOlZEI2m0D9AJfs0C5kIJHDF6NoRZNfpB
         xM/jvuoKae6lttHm8OtcdIrpW6uJVnuw6UfbymuqCUDhsPeKnFO9cyiCbKqovYb/Ji8h
         n96FrZqwcZpev6ORk0GGNYSK0hr1Nrcc0qhD1OxgZ9Mp26a/SfluC5fk9r4cJ6xdmrQS
         b6QA==
X-Gm-Message-State: AG10YOSw2N2EQno1AMCGwFMCI0S7QLKVa+byjPV5CMxEg1rylhOizG61viGVBlyllUEl4w==
X-Received: by 10.66.252.100 with SMTP id zr4mr35997487pac.111.1455686181536;
        Tue, 16 Feb 2016 21:16:21 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([14.195.236.245])
        by smtp.gmail.com with ESMTPSA id r65sm22822390pfa.27.2016.02.16.21.16.19
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 21:16:21 -0800 (PST)
Date: Wed, 17 Feb 2016 10:46:07 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/4] Staging: wlan-ng: Remove function
 hfa384x_drvr_getconfig_async
Message-ID: <20160217051607.GA4073@sudip-pc>
References: <cover.1455629651.git.bhumirks@gmail.com>
 <a0b8f47e21463de39350f83363a19f0a5e596479.1455629651.git.bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a0b8f47e21463de39350f83363a19f0a5e596479.1455629651.git.bhumirks@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Feb 16, 2016 at 07:10:34PM +0530, Bhumika Goyal wrote:
> The function hfa384x_drvr_getconfig_async is defined but not used
> anywhere in the kernel so remove it.
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---

This patch introduces a new build warning:
drivers/staging/wlan-ng/hfa384x_usb.c:839:13: warning: ‘hfa384x_cb_rrid’ defined but not used

regards
sudip

