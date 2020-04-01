X-GM-THRID: 6809167002234519552
X-Received: by 2002:a63:1862:: with SMTP id 34mr22169856pgy.191.1585731502702;
        Wed, 01 Apr 2020 01:58:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a507:: with SMTP id s7ls10235612plq.1.gmail; Wed, 01
 Apr 2020 01:58:21 -0700 (PDT)
X-Google-Smtp-Source: APiQypIdQN6AvYQgwcYFeChrkXXOQvJwCYqBfjK+4mQizrbCVQVI6FBHWh+K+aRJYG1vj2jFoU/R
X-Received: by 2002:a17:90a:b395:: with SMTP id e21mr3676091pjr.33.1585731501426;
        Wed, 01 Apr 2020 01:58:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585731501; cv=none;
        d=google.com; s=arc-20160816;
        b=Po04jfVKetzSYXJ4YIe1sKAqZnPDx7mc+GlYyWvvm02L6uHWFD3eEDw7XDao43U9xp
         nBxc46ViuLpKVKW+Vu9/t6NEBHHEbRImgDVl9T4yLniT0Feqvy7HhKIG6nJpYgL8WiLc
         ouPAvvcY4bbD0a/gEr0yWoJRi1baPBt5iSf01uwgwv3KVlskTNffzcJm8lsXI/No7L0o
         33LG4D2XM69DHX/eAvy9b8eRM0nI1CXHbKbeC6slAQG/S0h+y6YPgZgJ3LTm0FLGdif3
         1uZPo4JLeEK2nOPrB/ws2VOKC5ECfqhyj2lqVlP2/vl0Q89364LAdf4pgCLUvmKR6O0/
         THZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=riGPrE9HSjH0MRHt3M2cQFhFMlEgoyaOzczIL7BBZJo=;
        b=Akud7CRRZAh4XzfRocm1EOwQa8ruO7nmwqnM/CHeEaAT2lWnkbr8cjAXpffD6HaWsn
         merNwAwo7xB+NvJ5Lkj9ub35o/C9o98mzdtH21EQOPUQDlsdYeNnMqBOutuNvOwQmupL
         5yDi5aZ2Q2xvc/9o9b1CC/ItAOWJzqvBUZwQVhQroi4fF9VZUBCd4f6vrql1HVu+jsKZ
         eu07KuoeU7BKCPiJjRaUZStrkDTlsliXpb7J5m/Ii/fU5h3Tclv/YMuYWD+FtnTVBnY1
         HtBMx12D0RCiRNZjE5WyOPfQSNeHLN+XZ1WABfNqGnVwHQ4gA/0XU2CUHO7jefLkNpxk
         6s6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lgURygTR;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u14si478382pjn.2.2020.04.01.01.58.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 01:58:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lgURygTR;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id x7so11805082pgh.5
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 01:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=riGPrE9HSjH0MRHt3M2cQFhFMlEgoyaOzczIL7BBZJo=;
        b=lgURygTRVNW35rZAzrEMwxljJoVbQ3jkhhtqYIJu7XnGcXgdrqahcEEd6vWqU5nchJ
         w5uHdkMv1SuvatRHigyVnwf6u8ohMiTod823xrxBzT4ZslPgVKab0RL6TEMN7YNKViRw
         m4Owb7+4z+UVIRpoAl9/dGwMTmWB5yhOl0QBOI1/z6JSExr243jSOsqo+f99Ezlt0K1h
         ZWV//j5wLFHVlRnXsjV84HhXvGYxci5RPfPst2M4BBA1shv95r0H/GRCqCc7aKTQxOHj
         Sl0s4NQdrNiY+qB52tezfvLg6ek2XJc5MDunJOgn9LbnCvI1n5Iv+denNIlYCJ+fjMi0
         zZfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=riGPrE9HSjH0MRHt3M2cQFhFMlEgoyaOzczIL7BBZJo=;
        b=IXya78hqFRMkQ48GZDzms/tJMm5Zqy7hFAALjs6BLPrk/56Zv6WQcGxH4v6wSTXXqj
         DyLjN+34q3C9pMzK4hsAfF+0gM7IUq3aJWnRaU/it07Vjv6RvEHVebW/nkiPHNuXdn59
         96HYesnOaQe+nGKcrxcRBr5xwoOt/+05DICNuVmRYt45fVlSZFFRxXpHNcvql1Eqrzo5
         Mjg3jW3SuaS2eVq1g4lGpliMS4myFy/onXhx0vweETk1XrChc9wF0U9j8JI6Y7qstsHx
         MYmn/Q5TjyRR+qpFl5hwaPJM1DqwNtZ/lKZlx7Ply2qcVULQaHG417FT4wwd0mtYgEM0
         xaTg==
X-Gm-Message-State: ANhLgQ0qbHGeOms6G9I4G9yzTTeDTZhSFaVTJv95czFIp9cljawuOau7
	xFwhLZJL92oOTGMn/4mAcuqN5lvuJ4HxkA==
X-Received: by 2002:a62:2a8d:: with SMTP id q135mr23438903pfq.220.1585731500791;
        Wed, 01 Apr 2020 01:58:20 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([157.42.224.231])
        by smtp.gmail.com with ESMTPSA id i124sm1106379pfg.14.2020.04.01.01.58.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 Apr 2020 01:58:20 -0700 (PDT)
Date: Wed, 1 Apr 2020 14:28:12 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com
Subject: Re: [Outreachy] [PATCH 0/3] staging: qlge: Resolve various warnings
 issued by checkpatch.pl
Message-ID: <20200401085810.GA19697@ubuntu>
References: <20200328080254.6692-1-debsoumyajit100@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200328080254.6692-1-debsoumyajit100@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Mar 28, 2020 at 01:32:51PM +0530, Soumyajit Deb wrote:
> This patchset resolve coding style and indentation issues reported by
> checkpatch.pl
> This patchset add space around various binary operators, remove extra
> unnecessary blank lines and properly indent a multiline comment for the
> same file qlge_main.c present under drivers/staging/qlge directory.
> 
> Soumyajit Deb (3):
>   staging: qlge: Add space around operators
>   staging: qlge: Remove extra blank lines
>   staging: qlge: Properly indent a multiline comment
> 
>  drivers/staging/qlge/qlge_main.c | 30 +++++++++++-------------------
>  1 file changed, 11 insertions(+), 19 deletions(-)
> 
> -- 
> 2.17.1

I have submitted this patcset on 28 March but I haven't recieved any
review on this.
Is there anything wrong with this patchset?

Please let me know, so I can correct them and resend the patches if
needed.

Thank you


> 

