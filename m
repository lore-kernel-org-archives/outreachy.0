X-GM-THRID: 6609200682225369088
X-Received: by 2002:a67:8407:: with SMTP id g7-v6mr17638845vsd.9.1538914823567;
        Sun, 07 Oct 2018 05:20:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:254:: with SMTP id 78ls2159185uas.4.gmail; Sun, 07 Oct
 2018 05:20:23 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60fuwfI4rvCCiR2ovnHcXcrF2Pzaetn4urXFh2kjSFnN8pmamhShPgr/tTSStgB64YeRA+B
X-Received: by 2002:a9f:3766:: with SMTP id a35-v6mr16637259uae.19.1538914822984;
        Sun, 07 Oct 2018 05:20:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538914822; cv=none;
        d=google.com; s=arc-20160816;
        b=Wagfjuo64lzsGf0JDingbea7lvDRoVmBPe430LdOXPcBwnJpudwyjAjhlTqOmcRvnD
         GIzYF9krbal1sLEwIoMMeTbkR23qZ606+rbuhZlNEEk5+k+ry3NFbBMzMDDZ6A0rpqmp
         q2BQ8bF5EQ6DLs18QT2DkBYgLOX7LluyUFgXlWSJ6XyGk1hATIzAqquYg2AYeK3LVpmF
         tMhBYaUmiN6Q0vH2ZNuaWRcaDnSAeix6fs/G17Ka+RcOqz9/Z90Nor+9WvJzbql4Qe1h
         g/jjFCCaREToC7MJ4aOnrOzVk/hTYNCrhIP/rhM8pBm8ff7sUixoNUyVmenIj6kf/m0q
         NVeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=A3fUWCy4sfrqBN2VA1VchyMHWef9rm6Ds+1VkHR83DM=;
        b=JkCp1c17wlPc+6Kpkcw8MRqRq/Mt8CNGTJjtHiJ9HgFkPxOwRhzsbnmulEcZwYGjmZ
         wpnwdKM0ID57OEsXna65imJedJL6DjiPE1AiQ/40SVfXMidgof4aIhLDQLXtXkE7bnAs
         LimaZafpbazdNBNcvSIYck6ZkD67atu/6eZlikuGyPmXwBRP5RK+IPDpmtb2m72vjFgG
         aitUs5fkEZVEH0k/I5jauTPvhZwJGpg+eRZHigLMVrTQx/K2MhHuGSMZGhjEZFfv3skD
         //G2A+BYEtdYvp+HcKqaxm+clrokYSJFRfavkh9+3P/fOAc+4+r409jlH6C6sEHBaYMP
         R3sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="A/+Zjn4Q";
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id r132-v6si684202vke.0.2018.10.07.05.20.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 05:20:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="A/+Zjn4Q";
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id g2-v6so6612907pgu.11
        for <outreachy-kernel@googlegroups.com>; Sun, 07 Oct 2018 05:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=A3fUWCy4sfrqBN2VA1VchyMHWef9rm6Ds+1VkHR83DM=;
        b=A/+Zjn4Q5bTfJyigMpPeo/ZeIghECCnBx9k83KfmNttdMA/9RojZwV97P9Ypz6/o7Z
         lefn6vW+r1763wL3ZNgOC2tg7AfbYmJtmWqBr6kHi8eGXgi6mB3BrY/sj/WtXaxgFyAd
         P0yRjggVlWD9KYlgYtulLfnug+UxNL5WepeH86UdO7N91bd09TQVW0jqP92Nu7m0tgmW
         3HNTuCgGn6csQcHQQ1ROHmFWAYUxopakpSM51sN2yTH/ePMLCZhZLHpdOYfFCAZFvnGD
         gy9asTuE9Q9d1dmsHvJOGZgsS/VU0FPkSxM+H5KjeXznfIbXq3iIdCsENIOspvJslnzR
         ZROA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=A3fUWCy4sfrqBN2VA1VchyMHWef9rm6Ds+1VkHR83DM=;
        b=OGmCBY+8dW2DlMndj53x8asnK+z/kB+6YUGJx5elgokSngVlaPYGnB4wM6PNuno5D8
         gaQTpt7atTtF0bGwtD0od5/07Ua/oKff1BvX4bRQvO4rkzmBlFtonirS7a0IG5fEaFA3
         YyQ0q2ZfNqcxZCUXI1FmFOqeAMt0XN3PwswROj5JSYomwwENnllrR8n6vorZxRHT/kNV
         wj/HJod5QP5Fs5EPKXaaH/VqaG02JRn1oF7qzu7K3lFhJDRbV5tu6H5uSyHRQRgUjgpK
         tjEnEQko4mlaW0cN3tLYUyEKPI2IsGZJKOb2GHrPFW9BcO7CR48/yDafetd0+e5MW374
         P7Gg==
X-Gm-Message-State: ABuFfog2xK70aVUUM8cts+KIfHPwf3IG1tPrlER6GaQ5glxytx5lynci
	op/GYKsZSyeiqSjBsl0z+ZNX3BFY
X-Received: by 2002:a62:f20f:: with SMTP id m15-v6mr20258342pfh.244.1538914821817;
        Sun, 07 Oct 2018 05:20:21 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id o9-v6sm24875453pgn.30.2018.10.07.05.20.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 07 Oct 2018 05:20:21 -0700 (PDT)
Date: Sun, 7 Oct 2018 17:50:14 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Bhanusree <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel][PATCH v7] staging:comedi:comedi_pci.h Prefer
 a maximum 75 chars per line
Message-ID: <20181007122014.GA19999@himanshu-Vostro-3559>
References: <1d352f7b-f146-73af-23bc-5301c9cd035a@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1d352f7b-f146-73af-23bc-5301c9cd035a@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Oct 07, 2018 at 05:02:26PM +0530, Bhanusree wrote:
> comedi_pci_auto_config() function prototype is exceeding more than
> 75 characters per line. Adjusted to 75 chars to improve readability
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>

Put a space out after ':'

staging: comedi: comedi_pci.h: Prefer a maximum 75 chars per line

> diff --git a/drivers/staging/comedi/comedi_pci.h
> b/drivers/staging/comedi/comedi_pci.h
> index 4e069440cbdc..9c143953ea40 100644
> --- a/drivers/staging/comedi/comedi_pci.h
> +++ b/drivers/staging/comedi/comedi_pci.h
> @@ -31,7 +31,8 @@ int comedi_pci_enable(struct comedi_device *dev);
>  void comedi_pci_disable(struct comedi_device *dev);
>  void comedi_pci_detach(struct comedi_device *dev);
>  -int comedi_pci_auto_config(struct pci_dev *pcidev, struct comedi_driver
> *driver,
> +int comedi_pci_auto_config(struct pci_dev *pcidev,
> +			   struct comedi_driver *driver,
>  			   unsigned long context);
>  void comedi_pci_auto_unconfig(struct pci_dev *pcidev);
>  -- 2.17.1

Did you realise that you sent this through Thunderbird and
it somehow wrapped. These hacks can lead to corrupted patch
and wouldn't apply cleanly to the maintainers tree.

Just to check:
Make a new temp branch and then apply it using:

$ git am <your_patch.patch>

Use `git send-email` or mutt to send patches.
Personally, I suggest the former case.

There is no rush, Bhanusree!

-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

