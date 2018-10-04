X-GM-THRID: 6608456604457107456
X-Received: by 2002:a24:e57:: with SMTP id 84-v6mr4609909ite.4.1538654807470;
        Thu, 04 Oct 2018 05:06:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7110:: with SMTP id q16-v6ls1410870iog.4.gmail; Thu, 04
 Oct 2018 05:06:46 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61kTNssQKPLQ1vVCaHERS6JLCGxeQecm9xA1f2tx+j8P0vZcyenNwLrKwAmdkZ/rPvzQP92
X-Received: by 2002:a6b:9057:: with SMTP id s84-v6mr4421369iod.27.1538654806880;
        Thu, 04 Oct 2018 05:06:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538654806; cv=none;
        d=google.com; s=arc-20160816;
        b=qTEc5sJ3Dq20/uf1Q5fbz3NRphJNW2ZSuytLXVziXYzw+TS71tdMUx0rD3N7L7lA2R
         m0auUw3sZXMBSW1gGmtuCg2Os782f9J1sWYQ9F9hq9ka+99AhggXvM9zb9lD2aDu3LJY
         ncMdohq5SuR/VVj2SEr6kIbRBD3+kud0orYAXjs4LZFd3TDQCxd+7n5GTlCQa7+5x3ag
         EOYdX+CxVsaIGTIa+Tz7CpOAvCpKhdx9AdP8Z/GRGTMBAvvP3L3KBAJKQv0eaFmMv/8t
         s+0T5ZcSKtHx+Puo9xaCzwX78OUgL5viH+yx8rlRzzSw8D9h/eYuQ10a3krTxABlvdTD
         JNhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gQhHDG+cTLp6ZuEdXo66yX6tO/VfmHdMgr5vyUS3xVg=;
        b=wZ1sWpMgYF9Iyoehlqo/+XYcAK1pv1FMyDHA638RU0BpLLyCs1tSGjLmugbVWeEV9P
         xHzunb11qj71ti8rd1tj8uj+NUURUq5FUZOWfDSHmSeNJOrVtJr5JV+vOrGPT3A2WG4K
         uzJRqkVtHC1nceGzIxg6qUs1AK+JqXSYdKZ1gmaC4QNSvdqyiVrmRjjLFDdken+VgLzC
         mN9nTEQ84R7ePf8Zc/jNkVLABgEUwfk6wZcT+UtdK2FqUkfmhhfuKxTVxWbmxhK4H84H
         sce7Tzb+MNPShORzn3l30l6j54RXlNizFYZCGIh5xNrTTPqhOdjUXvmyIJKP4X3BmEgD
         lLAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lVo5KzqM;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id w10-v6si137212ioa.2.2018.10.04.05.06.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 05:06:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lVo5KzqM;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id 30-v6so5091632plb.10
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 05:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gQhHDG+cTLp6ZuEdXo66yX6tO/VfmHdMgr5vyUS3xVg=;
        b=lVo5KzqMwVf2A/TJIm4D+UcY1QiiEqDKESxK0E3a2Y19UPHtSqlXK6NaFnmTuY07cI
         aPUmT0ZeabT4LmyrujASB5zKlG+PNhC/pOBQasj7hwr60uIYR5dQOIjKOoikQ6puGbtN
         CrZp/FEYhxg6Jg/RohtkbLwUL7yZvRE3ZWtO8tFNovHEQkDSLthhkzEEqQ5uDtPLKNmN
         rqtdkJQm1mj67xWwnlt3moZRquJIti4BATaFwJXmpN5M3Cj3qjbQrNewSAqku421ApL0
         TT7sjFoRdTL4ktipCtbAVWGy6uu3v8LX1DVLlV/ylg8TknRkHkc5KXeQXXL5K2OWNsB0
         b26g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gQhHDG+cTLp6ZuEdXo66yX6tO/VfmHdMgr5vyUS3xVg=;
        b=DSnrZRQa7r5xaobn7rW/9rS5I475bio6TRilJjBpeLmqE7yUhWfJk3S/+tcgIgMz9R
         oHQYfRpc0qqj+jvsnEAr13jKXWmo/fGKfALh0LdiE4T2JI5vMr0T0TIOV8lVWjE7PPaJ
         Bq+GAAjOERtxgYVPVNguck/JP/eWoRzxt8ol8HW2lWaERap/PjnB3ZJUq7P+ycahlxW3
         fJvS1bMTJjrAOqZzf0YCURwQNDZH9IbHrNPv56DERaKqz0OXVZ8kWOoc02oaZg9xZokC
         +ZzcVHnfJ7R3vQJ9EAYkxRMUXgyLMl4CX795aGFuweAChDnAveyIMz0WF5WC4WNZNrUC
         DChA==
X-Gm-Message-State: ABuFfojuni5swpHt97pZkrU8K1uiSB/79WMkA6KoeMvr6iwuOAhjwT0q
	J6CiMPod7XIqGWwwGxQb5jU=
X-Received: by 2002:a17:902:8a89:: with SMTP id p9-v6mr6437026plo.183.1538654806180;
        Thu, 04 Oct 2018 05:06:46 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id h7-v6sm13273296pfd.35.2018.10.04.05.06.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 04 Oct 2018 05:06:45 -0700 (PDT)
Date: Thu, 4 Oct 2018 17:36:39 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: mt7621-pci: spaces
 preferred around that '<<'
Message-ID: <20181004120639.GB24641@himanshu-Vostro-3559>
References: <cover.1538646749.git.mamtashukla555@gmail.com>
 <3a8120a36703fc377aad082f139087335dfa62d9.1538646749.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3a8120a36703fc377aad082f139087335dfa62d9.1538646749.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Oct 04, 2018 at 04:46:11PM +0530, Mamta Shukla wrote:
> Add spaces around '<<' to fix checkpatch issue.
> CHECK: spaces preferred around that '<<' (ctx:VxV)
> 
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> ---
>  drivers/staging/mt7621-pci/pci-mt7621.c | 40 ++++++++++++++++-----------------
>  1 file changed, 20 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
> index 780ba56..31b448d 100644
> --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> @@ -474,12 +474,12 @@ static int mt7621_pci_probe(struct platform_device *pdev)
>  
>  	ASSERT_SYSRST_PCIE(RALINK_PCIE0_RST | RALINK_PCIE1_RST | RALINK_PCIE2_RST);
>  
> -	*(unsigned int *)(0xbe000060) &= ~(0x3<<10 | 0x3<<3);
> -	*(unsigned int *)(0xbe000060) |= 0x1<<10 | 0x1<<3;
> +	*(unsigned int *)(0xbe000060) &= ~(0x3 << 10 | 0x3 << 3);
> +	*(unsigned int *)(0xbe000060) |= 0x1 << 10 | 0x1 << 3;
>  	mdelay(100);
> -	*(unsigned int *)(0xbe000600) |= 0x1<<19 | 0x1<<8 | 0x1<<7; // use GPIO19/GPIO8/GPIO7 (PERST_N/UART_RXD3/UART_TXD3)

You can use BIT() here as well.
Example:

+	*(unsigned int *)(0xbe000600) |= BIT(19) | BIT(8) | BIT(7); // use GPIO19/GPIO8/GPIO7 (PERST_N/UART_RXD3/UART_TXD3)

Check for others too.

-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

