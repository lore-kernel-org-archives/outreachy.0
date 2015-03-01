X-GM-THRID: 5217547452416
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8faf6c21ae90d99b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.167.98 with SMTP id zn2mr2993581lbb.6.1425198429588;
        Sun, 01 Mar 2015 00:27:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.166 with SMTP id fx6ls376660wib.20.canary; Sun, 01 Mar
 2015 00:27:09 -0800 (PST)
X-Received: by 10.194.63.208 with SMTP id i16mr435431wjs.2.1425198429278;
        Sun, 01 Mar 2015 00:27:09 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id i7si434203wif.0.2015.03.01.00.27.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 00:27:09 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghk14 with SMTP id k14so27878801wgh.4
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 00:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=LbmLWOrsyWjMbFP/ISB2DOv8OizbVyKSaOphncSSQq0=;
        b=sfVMxBFFA0ZIEZZDH7SyiHtN6yLwe/IOt5jxEZBnAhDsTuG28R6CMp/ww0DtRmbkhs
         IoT/ZTWDnFl4eGMCKFJI9ySdaqoCOn+OcB9bqMYQADV1cZsZ6kBqpusYFkUNi1HWY4qY
         5hZd3/KzPHumQZDhmKYBRG0pCNVXM7z59FkYgr3FXZ8ZuPfbEVqk46PtIlmtuIaG3NRN
         lzfy3gwy5rVQrDsEudr1YlzMOZCpWHzfqQ/VpK+6rqk4UY5qk05MePMXWhTvr4uZd+l1
         JzHw1Y2+ZbHaZppo4FTWtX4Hd/LhjO3aTgKoWUvx6fxQlI+W1FrmxnJarVWZpMPBaf+p
         Yihg==
MIME-Version: 1.0
X-Received: by 10.194.6.228 with SMTP id e4mr45429258wja.63.1425198428802;
 Sun, 01 Mar 2015 00:27:08 -0800 (PST)
Received: by 10.28.3.68 with HTTP; Sun, 1 Mar 2015 00:27:08 -0800 (PST)
In-Reply-To: <20150228211147.GA2496@Inspiron>
References: <20150228211147.GA2496@Inspiron>
Date: Sun, 1 Mar 2015 10:27:08 +0200
Message-ID: <CAEnQRZDTE97T0yXbq2FNRcr5PZti+be-JWh-GhYecipnfw8FpQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: dgnc: Replace printk()
 with dev_dbg()
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 28, 2015 at 11:11 PM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> This patch replaces printk() with dev_dbg() in order to avoid the
> suggestion of using a more specific function while printing debug
> information. Warning found by checkpatch.pl.
>
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

