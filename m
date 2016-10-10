X-GM-THRID: 6338573306714652672
X-Received: by 10.157.53.47 with SMTP id o44mr5808050otc.50.1476071348465;
        Sun, 09 Oct 2016 20:49:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.213 with SMTP id r21ls2338732otr.17.gmail; Sun, 09 Oct
 2016 20:49:08 -0700 (PDT)
X-Received: by 10.200.38.232 with SMTP id 37mr5365475qtp.14.1476071348168;
        Sun, 09 Oct 2016 20:49:08 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-ua0-x244.google.com (mail-ua0-x244.google.com. [2607:f8b0:400c:c08::244])
        by gmr-mx.google.com with ESMTPS id p70si805028vkd.0.2016.10.09.20.49.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 20:49:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) client-ip=2607:f8b0:400c:c08::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x244.google.com with SMTP id 10so3605113ual.1
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 20:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=j1iK1pdl2inFguGfSe9JlN8goRExzwDbLSZWTxTdw/Q=;
        b=E5TAy6+nP2H/XcykyshQpUs4G2Bmc495MG5wPsRBTY5jDix5F3k2AbFeEmbXWN/oKc
         JDTPzqmIisMOKBJ6ZLMX05of/RiKrTPWggJe193PNRfmnNkdcdw3HDEBbsZjYPYQb2IC
         ZLyVsktx2vPHG4WwWbthA9655lqZv4dUuoj1AHNz58TwWoZquQTWTWa4/cvCOzUP5wiq
         JzenfayWHnKyPGssKIBWWZ8pqbUR1wiFdxOrXacxazxj0+sK1j368WP100dPTKCh9AQA
         T7bkI3yk4fdcw3bMHHwKajxbLTK5bv5s+GcrokikuK1lighSpb/levaH/NjmEJa3WlOT
         YiCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=j1iK1pdl2inFguGfSe9JlN8goRExzwDbLSZWTxTdw/Q=;
        b=DBqdCuuE9BuOG5D2rycI8Q8QrBuhL8V8+BFTk5qwycPk+TM52YvPeg5/Z8RIkyFswB
         4A3QTDT1bPjNzOBvNV09xzOjZUvvNnNj+MVPXk0WqDM0xzEQXg/NXCo8foS8CsoQcr3j
         3mPKEoDZjZJiyJ9zWzX95Bri1OJEwVuZXl0SOWvOwTB1L0sNZ2VREIP3QtMZD6FEdpoB
         TCEwBVVUPCtlw64iUJDBqH/zxEem452peWP1Xc6Fa9NKa3uWKmsJEll2POY1OZJJ/fIY
         hYS1u4JEwHAc815Ok/FKNHYGE3/JA/uq8IR3bB26RNOJKjOjy964m6ZP3c7VqUg4nuTP
         C4xQ==
X-Gm-Message-State: AA6/9Rm1CwQdheW9FpHBtkHq0FR40QWKLP5vxDcPyW79vLybRh6U/lKuXmNPAPKXAIGFrw==
X-Received: by 10.159.32.129 with SMTP id 1mr16148686uaa.94.1476071348031;
        Sun, 09 Oct 2016 20:49:08 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id b186sm8824339vkf.15.2016.10.09.20.49.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 20:49:07 -0700 (PDT)
Date: Mon, 10 Oct 2016 00:49:02 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 3/4] staging: wilc1000: Replace printk() with
 pr_info().
Message-ID: <20161010034902.GB5524@lennorien.com>
References: <20161009031023.GA11944@lennorien.com>
 <20161009143244.GA4541@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161009143244.GA4541@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 09, 2016 at 04:32:44PM +0200, Greg KH wrote:

> You need to put below the --- line what changed in v2 of this patch.
> 
> thanks,
> 
> greg k-h

In this one I only included the first pr_info() in the commit.

Sent another patch with the description of v2.

elise

