X-GM-THRID: 6671240645547393024
X-Received: by 2002:a37:aa8c:: with SMTP id t134mr19165279qke.93.1553530073606;
        Mon, 25 Mar 2019 09:07:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:25cc:: with SMTP id y12ls3204947qtc.10.gmail; Mon, 25
 Mar 2019 09:07:53 -0700 (PDT)
X-Received: by 2002:ac8:54c:: with SMTP id c12mr20184293qth.327.1553530073130;
        Mon, 25 Mar 2019 09:07:53 -0700 (PDT)
Received: by 2002:a37:4909:0:0:0:0:0 with SMTP id w9msqka;
        Fri, 22 Mar 2019 09:21:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwtVr0eh5FCG7EJr/L5dGRl7Y9apf3jjOdaUC+HzO4y34E8BPs6omDQ8PFxBrXMhxKt2U/8
X-Received: by 2002:a7b:c3c9:: with SMTP id t9mr3372101wmj.131.1553271708140;
        Fri, 22 Mar 2019 09:21:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553271708; cv=none;
        d=google.com; s=arc-20160816;
        b=Gc8BsEUl3p9DjdWL/SzqiP4IaSToAB0GSKYdTyOIXBwNWcqMiLgbo1Htqa2ZR7yfkF
         Uxjf43AyW0h8DyTXsCPdBmbbeCglks4qb+2RgIMtYhk7NPpTwZgD0nd4KIq0+XwAyy06
         Wo80rJ5j7usr6XRXM+oosWHWPU5L3TRqME84Wr/WuBAKddOsCUdQs/Kt/GX1ueB1XFwr
         SlEiKLHTowPTQYPT6Y3JaPmbtEADemGTsoOFIJSjfduIpExeyy5HhBP+gslP+Prd0agn
         ACZ+4xGT8IogOStZruoV93PMHYfeF4yHMh6KO9gufbtls3ri1sHh6uwd2fv/5X6IrXYG
         jMJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eyqR4SGhM/Ydx7XkiQU5GTi0wI/5Kxbe6DJkPISp7AM=;
        b=T2DjJlaaTANLOzIjsQKGMiw+qrLd6fnaFWQN/0KPXKMzgADKCoJ9Z1EeynF0AsoYSx
         oaC8EZXeEZwFkUvqeEe8hWPUQUIe7bwDWrjHxxx2wq6nKaKRhe5uvBxK0vYZrRgMVM/J
         CX3yL82fqPrNuYh21OlXQBlx1qmxP60zXFcD29NHTgw46qpiEoHYJ1lHGkwIuxpyY+Rw
         3AKBOm4HiCN6XLmwgTjoj+jE6uvJawRQIp3K4MG5MIx6N12X6Y7gegcbhzp7Z5NrKit/
         PjW4Jn7eTZicmxK2qPHIA4yr6hXhLuhB1zboUJ9/IHheI4YSBILYoi8LHDIU7JPzkxWZ
         MVaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KiH+6D4S;
       spf=pass (google.com: domain of festevam@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=festevam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <festevam@gmail.com>
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id a9si422829wrp.5.2019.03.22.09.21.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 09:21:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of festevam@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KiH+6D4S;
       spf=pass (google.com: domain of festevam@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=festevam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x134.google.com with SMTP id g7so1785737lfh.10
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 09:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eyqR4SGhM/Ydx7XkiQU5GTi0wI/5Kxbe6DJkPISp7AM=;
        b=KiH+6D4SCpOCRzX+dgg8OrYrWFIzxdAEbGc1e9ftZHeKSdWiPkjFZooQVfNKerUDTe
         kTpkaDIo/88i9vyDaDvSxZJ4pSyCrH13PWvRSPO6EIA9jz08l8KAegmRix0lKz8wkGHN
         KIIeoUvDYPPZfS+PIhluYW5hS7vubueUehE0AawUReYoEEZEROPk+w7uraHEZ5+n+XMz
         Bj87MlWGy9ACo4rYDJ010E93CIRWIyCd0jXKnErSzCMcDBTsC7Dh5rMCjL8pp/rFUypD
         NapHvh/sgEdXeIr3b6l0cF+GuSP33Qlg2elNtMjRDNAkoYAnVi/kH+UB8arZTcBMAJrw
         1WAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eyqR4SGhM/Ydx7XkiQU5GTi0wI/5Kxbe6DJkPISp7AM=;
        b=QMvvXtPZWArkE7hcCHr9Dcoswe7cliK6Yi80rDIXIcZmhlP6YH0tz7qKyObNRhKjhy
         8R4Yi2kYmWWPMkVYG7mdX8m9AgspYR/sg4japyNORtlduCDUK6AQLQTs5aFAU+KrrDfx
         V5mG/WnVCZ8JuqddDSjSIugJL7tFHUhtOR7obrFhxxjcqS+q1n3VL13IHDYPvOuuk4nX
         oXerZxyAX6VGUgEESnATYxGzZkiL41oUWQbLOV9sJrhKbEia3NnDIwe+8oYvrFN7s1c6
         F7CRjxk0gjciPn5gS3ZbwMC0qJrsxjfwgFOwmEgJVUpjuARzYqlPFIfWpGhwFhDUrFjy
         tUqw==
X-Gm-Message-State: APjAAAWcK97YQCpM9FXVNsbTks8NVae7s9Sq/sfemtyZVqaCg8IrHipQ
	wHT6NUYC4hXOH6TWdU93EHCeTFescWvrM+vvKtE=
X-Received: by 2002:ac2:5381:: with SMTP id g1mr5571006lfh.130.1553271707830;
 Fri, 22 Mar 2019 09:21:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190322154035.9014-1-bhanusreemahesh@gmail.com>
In-Reply-To: <20190322154035.9014-1-bhanusreemahesh@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 22 Mar 2019 13:21:45 -0300
Message-ID: <CAOMZO5DOQE-LF33yQAzNqoNCWetXOXAh6m7E4+R_VQ8Lb5c+Rg@mail.gmail.com>
Subject: Re: [PATCH v2] Staging: media: imx: imx6-mipi-csi2.c Remove
 unnecessary error messages
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	Steve Longerbeam <slongerbeam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 22, 2019 at 12:40 PM Bhanusree Pola
<bhanusreemahesh@gmail.com> wrote:
>
> The function devm_ioremap already prints error message  when there
> is no enough memory.
> Remove print statements that give error messages
> Issue found using coccinelle
> The following semantic patch is used to solve this:
>
> <smpl>
> @@
> expression x;
> constant char[] C;
> identifier f;
> @@
>
> x = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
> usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));
>
> if(x==NULL)
> {
> ...
> (
> -f(C,...);
> |
> -f(...,C);
> )
> ...
> }
> </smpl>
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

