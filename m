X-GM-THRID: 6340039641563922432
X-Received: by 10.13.214.3 with SMTP id y3mr476892ywd.174.1476293756331;
        Wed, 12 Oct 2016 10:35:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.216 with SMTP id 85ls1568060ior.16.gmail; Wed, 12 Oct
 2016 10:35:55 -0700 (PDT)
X-Received: by 10.107.164.138 with SMTP id d10mr679302ioj.8.1476293755819;
        Wed, 12 Oct 2016 10:35:55 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id t8si1172080vkb.2.2016.10.12.10.35.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:35:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 83so1348581vkd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 10:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gfqz9BO74htSwP1zAA+9sDhLRj3nGJ8gnWAr/gegzH4=;
        b=d7Hxqc7M+5PdELon0iZZTfYVQ7Zi0kSSPHqqcLfedwQv7TQ9KwrbEBYk9zE5dULt9Y
         /yQSh4tJhhU0nEqsukKjKd31lSuNfl9MeQ8kTviAR4DaiYxhR9DeIHmbp9mu6NB9UjiO
         XFoo091+lZDLVgOgENGbFhdseJa5B23lM49nzhesnZFFqP16OG7QewgSbioguG8b1jG8
         LLAumEN0uEMyKVz5xWYIDFNEHva5gC9fmNi6YBO5xgg8JxA6Lj2xSaf40UpTeDq9Gh/s
         Wju+qVcKg55LW2MlE7WtXytmr3ny/ITiVrPnuSSh9d/YWBVMPODBKeZXfrVgf+ZJKDUO
         aCUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gfqz9BO74htSwP1zAA+9sDhLRj3nGJ8gnWAr/gegzH4=;
        b=lveYmsC0GeEU+GeBecNBRlun1/BXTe9B0InyFruPKrS3JPhSWNr3az7Tn4Gerzi1ce
         UFRGN7Vr6/zU5Rb2NRkn9l/ZGW1KUM/dxdYu/ABrS9YjT3DCP2KnbWYvuhkCEGWPl5nx
         YTq465Rr3nkav+u5TnPTm/lDn5xDoi6GtlfELlUkxd8wZH0mxYqyD2Vnn+xXpo3qfFIR
         bwpo9LfvtSQ+PmOPiJZpTKcLSzbQH3Wdn8xwGikZUA6Pf2UTbV9KxexiFiAtZi1DoBgr
         dnm11LVVsDRk9M5hRNnuNX9fKbgdpFOM1DBX2l9h9/lbeJWxs0n6QZDFq51I7Bzobi63
         Mbcw==
X-Gm-Message-State: AA6/9Rm1DjfUjwE7i7JbeEzgbOgLDkat/xGPd87wbw/TIImWsHmbXke1+LFqwqLeC5p/+A==
X-Received: by 10.31.98.131 with SMTP id w125mr1325805vkb.20.1476293755687;
        Wed, 12 Oct 2016 10:35:55 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id q10sm3478183vkd.0.2016.10.12.10.35.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:35:55 -0700 (PDT)
Date: Wed, 12 Oct 2016 14:35:51 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/7] staging: greybus: Add blank line after variable
 declarations.
Message-ID: <20161012173551.GD4296@lennorien.com>
References: <20161011031146.GA21921@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161011031146.GA21921@lennorien.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

New version of the patch:
https://groups.google.com/forum/#!topic/outreachy-kernel/mVVbHvYAg5U

