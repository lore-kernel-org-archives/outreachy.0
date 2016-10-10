X-GM-THRID: 6337544242768904192
X-Received: by 10.237.50.99 with SMTP id y90mr5818624qtd.55.1476071152754;
        Sun, 09 Oct 2016 20:45:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.48 with SMTP id h45ls9054983ote.22.gmail; Sun, 09 Oct
 2016 20:45:52 -0700 (PDT)
X-Received: by 10.13.213.12 with SMTP id x12mr8270338ywd.52.1476071152422;
        Sun, 09 Oct 2016 20:45:52 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-ua0-x243.google.com (mail-ua0-x243.google.com. [2607:f8b0:400c:c08::243])
        by gmr-mx.google.com with ESMTPS id p70si803412vkd.0.2016.10.09.20.45.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 20:45:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) client-ip=2607:f8b0:400c:c08::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x243.google.com with SMTP id m26so3620347uaa.2
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 20:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Mf9Jbj0TIegL7al2/zpSm+nlp7b5LtzO+6ji3nDZAW0=;
        b=jy/74C9kUcXkAViLCdw9YGO1oRl6nM2xYHz1+16Vzcmepy3556GR3uAPtWpgte4tuE
         eYWWJpLBOLYS0HR8nhFpqDYwlMRFo3hSokSsvNZuOX2h0OWB7ST43lo1tSNa9Akt2S3f
         iqExZMlroS4e90jk0YlxooIBM5oBv8BpwFlMrgPPZWuCXLcVfkniGwUY45k/HMYx9AkR
         5kKEHPS9qRD4MU6LJS2nVUypZHYD0YeB4VpVsv4kJJRLg7D5V0jF/zrSXooKThsb5qI2
         TXnsSaPM15oMNqRUkYH7FRvn3bLpV10h75BbIJylwZRIR2rjRPKz9eQzGEjDDtRwyd1s
         GyQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Mf9Jbj0TIegL7al2/zpSm+nlp7b5LtzO+6ji3nDZAW0=;
        b=dPbdGcWBToNPrR/UeDzfYzWptLsv6rMVPePiMMxviCRc3bG/b1yboGucLSaAg7g5Rr
         WcZo5DPoJXd2ix0LIJoroQdwPDDAmrOejJHeA3vahFiDz/NEPXS635xdt/7JZwm5Py5Z
         ahPS8DZxIFw38bc7Xtc9WfRi10ApQ3RoSj/MKF5zhKvBxBi1lUmfyVGZ1cKVvW1/+Jl5
         zMhmnNYVpRx5YPQR33Xme3cW1yg3CZkbkcZOLSDUfzNOlArDqI8tkamjfuvm5DfUVdRn
         PJIoDBiKUGV1XwVC/neHL0wtkNWB8auN2eSkles6xonxSBMZlcIOtWioxQGO5o8stWd+
         NdLg==
X-Gm-Message-State: AA6/9RkQM4LGk4jRUXjs9asiczML+JMtf2ng1XLibmv3/RclS12ORM+BBnTTO/Cpnro3RQ==
X-Received: by 10.176.64.229 with SMTP id i92mr20800653uad.32.1476071152282;
        Sun, 09 Oct 2016 20:45:52 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id m194sm4863136vke.7.2016.10.09.20.45.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 20:45:51 -0700 (PDT)
Date: Mon, 10 Oct 2016 00:45:46 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: ks7010: Add blank line after variable
 declarations.
Message-ID: <20161010034546.GA5524@lennorien.com>
References: <20161005204859.GA8628@lennorien.com>
 <20161009144506.GA6829@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161009144506.GA6829@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 09, 2016 at 04:45:06PM +0200, Greg KH wrote:

> You need to say what changed in v2, otherwise we have no idea :(
> 

In this one I just fixed my name, was signing with my git username before.

Is just replying this e-mail enough? Also sent another patch with the same subject and the v2 description included.

thanks,

elise

