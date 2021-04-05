X-GM-THRID: 6947467648210829312
X-Received: by 2002:adf:dd0c:: with SMTP id a12mr6693353wrm.274.1617585223070;
        Sun, 04 Apr 2021 18:13:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cc94:: with SMTP id p20ls6816687wma.0.gmail; Sun, 04 Apr
 2021 18:13:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw73DCkoHfURXDR8rqAzi+mnc0gcwC+vbsW3iDFa8ajnIhQJsaahDPR/yfjgQhMS7wkx41y
X-Received: by 2002:a7b:ca44:: with SMTP id m4mr22929490wml.103.1617585221701;
        Sun, 04 Apr 2021 18:13:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617585221; cv=none;
        d=google.com; s=arc-20160816;
        b=jLNCQsk3Idyz3kJNUCfvADeMg5FbL3xhyXt4YMqdDCK60f8pt6EIuuqiXW1FgIgEtV
         wHDABOcUp3zgcNnKq/2/iEJgLg0XcNBu5S8/6Xc69w9O7xU3sgb3HuzrXSaBm/zOoU0M
         oJ8rsLy3UVi3CGvLLUbetxEC7uWCDnLQ0Km5eMui2MoiAu7ZyykwH8om6+kpS3D7pXoJ
         1I/KuAUtsuxGG9CJEFD0LSZZzsESi+/VyZD/mdbrbpa9tJFXNxDLBe0jUAmD5wU7o4uH
         iDufueTqFDTLdHVkEblEN8ARTQxRdqIjEX8vE6t684B/NPtzbyMAhg7jxZK++Z/mC6hr
         VTfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WFTs1r/K720X27EVNRCFyCxYPcB0o1qMFJEeae/Czms=;
        b=fewzVTltsGnuWf66uA7rgfaWrCTrhZKdT/gxBxz/0Cgbk6oss6SKVB37kfENv5SEOx
         QYrLzvLt9nwR24vQwbD7xzcuNaTxIsC069j5HFVKimtVX98uoZHwhEei6Eard9bbV+QZ
         SgzDcIhPlqz2YFjpM7DO8Nyb27M24MYGRV1qhWwUDFebGhlw8x1Q3mWCguPkqZV5Lkob
         VDM6GexmrXOfdbJxLXPj9NzjILUSVNEBj0lRT82Y8GjA7wFE923Uxz6gVrackusbNVaj
         AcIWNAOkk1mO+JNjYbUisc70n5CrK6WVcgS1BKn4REEefab+sQE200opDaTMQi7M5VYl
         gGtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=oQKzIc0H;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id b5si2227494wmc.2.2021.04.04.18.13.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 18:13:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=oQKzIc0H;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=WFTs1r/K720X27EVNRCFyCxYPcB0o1qMFJEeae/Czms=; b=oQKzIc0H4wFKK2RV4RRnFv/bGo
	8WYhmyiEBFjwrefylJzoDrmSUPJGB9BzJxfxUtBisr8L/yH1ISZt8Imu2RoIGwqBiWXglnlagYpnx
	Y3X9wjAv6mF0nAX6mjFWXt8zV225snVe0WuGIEZe1OXTK6yZfLtxGOKEXabdHfH2znvW4Wc2joFVF
	5wySigb+UaF1XCzFaTi8t+6qsBxmtVFZ4hOx4V6sfh4EtlJXnIjo5nv+pxsRQoogiyy7qDGCkBT/F
	C0ZrzxlCLkx9O7pqqcEYYtH4lz6rUmfzGxUGx4OSXM5Wp4efNzvp5OmvU9XjLc74PSLO7KU11yk80
	l2m2nG2Q==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lTDnv-00Aliq-KS; Mon, 05 Apr 2021 01:13:26 +0000
Date: Mon, 5 Apr 2021 02:13:23 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: manish@marvell.com, GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: qlge: remove else after break
Message-ID: <20210405011323.GB2531743@casper.infradead.org>
References: <YGpcx9MZuZJFy0Z/@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YGpcx9MZuZJFy0Z/@kali>

On Mon, Apr 05, 2021 at 06:11:43AM +0530, Mitali Borkar wrote:
> -		} else {
> -			netif_err(qdev, drv, qdev->ndev,
> +		}	netif_err(qdev, drv, qdev->ndev,

That's not the normal indentation style ... does checkpatch really not
complain about that?

>  				  "IDC: Invalid State 0x%.04x.\n",
>  				  mbcp->mbox_out[0]);
>  			status = -EIO;
>  			break;
> -		}
>  	}
>  
>  	return status;
> -- 
> 2.30.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YGpcx9MZuZJFy0Z/%40kali.

