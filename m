X-GM-THRID: 6620726648786386944
X-Received: by 2002:a5e:8c0f:: with SMTP id n15-v6mr5521063ioj.0.1541519686931;
        Tue, 06 Nov 2018 07:54:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:6756:: with SMTP id u83-v6ls3058501itc.5.gmail; Tue, 06
 Nov 2018 07:54:45 -0800 (PST)
X-Google-Smtp-Source: AJdET5fBsVlWKDiHvlHsxpQBUPY7nMcsqIf953aav3ap33OOUeaPPk9PLzU1P8NV67mqH1K2SAvO
X-Received: by 2002:a24:3303:: with SMTP id k3-v6mr1972369itk.2.1541519685903;
        Tue, 06 Nov 2018 07:54:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541519685; cv=none;
        d=google.com; s=arc-20160816;
        b=Zmxugrc6YCcqIQcQd7ddOzz3y+4LDiwSjk+2oLGu/szTweGzMMjdQfualTs3VtSlhZ
         FMiMBjhZKi4zCUHVoO520erlbGVo5OU5DhkaMo6Y8CzLdLS1P77aHYxqs8jETW89JjZ1
         2RaoCykKSIdaB5zfPKydPZAX4Q8VV5WEfX+4MN3+DZPcPnbZhxXVGnmt7R9kok+JcAhi
         LZs5/N8KbPjolbOPPMhiPRpV5iwZP/t/GIIQS2xdAOKoPOIq22UoiqmH359dz9HVwrT0
         DFbrbv4STQq5PxVMHLuw0D39LLN0BfB+zzfOr9P2z5430GExr7O3xBYwhsFVIlH3Soxa
         iMuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9wAF3g3GnmRVThalUzwGBWNCGnBL14vNC4FtWdiN4yY=;
        b=fBc6VCY9JOtIz60h5W6xnBiGH9VF7mdGrK11nl9Sg4hFSEFmPU8YaagMQUNbW7SNY1
         6WrMndhu+42Y71i3R/04f9sDS69bIza48eCS1nODYSZYQ1/Yad4qY53RbzlrCmiB05c9
         dnbTYG5SgcilS6PaT4vRpeCpc7pLNK1Vvwo2MVzDOXkBZ1odpAX+XqeKXaseOSuWrWuL
         Q4/8ArxRq6LfLTrFJP7JXRGmOTfwcbF3OKfes4+0+gVGR/CRPQwMmQr8W3zqfozHxg1w
         x0AWrTAXBKihCGiOFBIKi1fE4Qqp7YbpGWzpVRhnlj4vfirOYRptXns3DLs285K+CpsC
         a87g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qBEuqPYq;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id x6-v6si1872065iob.5.2018.11.06.07.54.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Nov 2018 07:54:45 -0800 (PST)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qBEuqPYq;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id q19-v6so3398644pll.7
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Nov 2018 07:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9wAF3g3GnmRVThalUzwGBWNCGnBL14vNC4FtWdiN4yY=;
        b=qBEuqPYqL6u7k0DNVye0cTDB0OUPHbuuPhPJvw8ufQ1Q9w8wMdriDBQ+NQlxLbxf13
         F9slGh4ZhrskdzbsdI6sjlfePxio/P86QD2UcexZlhUNzKukPPRGeHVvF1ZWCphNPnLk
         MbgUIanE+Rxx+HQn6AfA2lGamO8yhLCq+xS5aD+uTRoToAE+HukbPSWZeMd4JOqGQ2+s
         Rnt2kwYqkaztfWAVFmtFuipOPg3kNamdzz5ZqY3lwxDvyNyyOezO+6FTPE32ANMhmn9h
         /No4LqOkHy2offpq4ycr4hbpEDs9O+mTqhQv43YiZqyJg7l+QnU62adh80VWX9CEtYfv
         lfGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9wAF3g3GnmRVThalUzwGBWNCGnBL14vNC4FtWdiN4yY=;
        b=T658ALtv/+r6D8OYqWq7aZjiePBMiPS0KQJNozSZ7xnR3nK2BkFKv+KYN8fGcW63P6
         pulvHjzIciKhgI9ff1wHUTo/G7gQo+WzQGMU19l4thjUY5zmhfEyR6+zJi7v8Ou9yU4h
         fePPibL+uG3JOqwj2rkIxLlZhOR0t2iAF7nZLjO1HuEprUDCvaqCc6PerMKtDV0GyEZ3
         0q4UqM1vTpa+khOSS9nRq19DOX001jlfp+S4Wp4vrTZ6Y3WeUveBJBBk169vFc1FjHrK
         9JhZ2Envzs+LwbSDg36lzmu+MrhagnycI/nrJt4tPvWyMhCA9g7vowgxVTuHMhnnx3pE
         m3TA==
X-Gm-Message-State: AGRZ1gKccG9qR3tn4HZ//YjZNypjqmh4byx0W7w6b0ppA5Y0hR+AfCav
	0OiuwVd5lXbpnulqgCn3fNE=
X-Received: by 2002:a17:902:263:: with SMTP id 90-v6mr26755668plc.190.1541519685106;
        Tue, 06 Nov 2018 07:54:45 -0800 (PST)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id o81-v6sm5688464pfa.170.2018.11.06.07.54.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 06 Nov 2018 07:54:44 -0800 (PST)
Date: Tue, 6 Nov 2018 21:24:39 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: davinci: add SPDX
 License Identifier
Message-ID: <20181106155439.GA21830@himanshu-Vostro-3559>
References: <cover.1541507973.git.code@wizofe.uk>
 <c2b97c7922c4b66b3ebff295592689f8ed184738.1541507973.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c2b97c7922c4b66b3ebff295592689f8ed184738.1541507973.git.code@wizofe.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Nov 06, 2018 at 12:40:58PM +0000, Ioannis Valasakis wrote:
> Add missing SPDX License Identifier to the source and header files.
> Reported by checkpatch.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h  | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c        | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.h        | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c     | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h     | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.c      | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.h      | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_isif.c         | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_isif.h         | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_isif_regs.h    | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_resizer.c      | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_resizer.h      | 1 +
>  drivers/staging/media/davinci_vpfe/vpfe.h               | 1 +
>  drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c    | 1 +
>  drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h    | 1 +
>  drivers/staging/media/davinci_vpfe/vpfe_video.c         | 1 +
>  drivers/staging/media/davinci_vpfe/vpfe_video.h         | 1 +
>  18 files changed, 18 insertions(+)
> 
> diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> index fefb0f1f4695..8d772029c91d 100644
> --- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> +++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *

diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
index 7cc115c9ebe6..61ad647b15c2 100644
--- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
+++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>

=> Documentation/process/license-rules.rst
   ---------------------------------------

... 
..

" 45 An alternative to boilerplate text is the use of Software Package Data
  46 Exchange (SPDX) license identifiers in each source file. "

..
...


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

