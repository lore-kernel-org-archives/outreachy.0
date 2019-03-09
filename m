X-GM-THRID: 6666118349921976320
X-Received: by 2002:a1f:ae53:: with SMTP id x80mr13901927vke.8.1552115238670;
        Fri, 08 Mar 2019 23:07:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3c47:: with SMTP id j68ls1971712vka.2.gmail; Fri, 08 Mar
 2019 23:07:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqwPbYxydf/WTd23qBeQqgVhAIAtngc/XAKslUgqwsXvEFWHt0BcQiJ7duvGjdatli/NXXf+
X-Received: by 2002:a1f:9750:: with SMTP id z77mr13882666vkd.5.1552115237970;
        Fri, 08 Mar 2019 23:07:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552115237; cv=none;
        d=google.com; s=arc-20160816;
        b=ewaJx59Ws0vMjFCjTfV7LgivqAxhjZdHcp0EcXOLUq7KIHriTdYiRtEPIIWNJm3BP7
         U6fUzD9ylGz9NNwWOxyWaECvhaof4RN1gLOEpkIbQqUqT6T6NCQ1l8eNclZZfnsARH7p
         S+KZ8EumGnGX4UaBKelFt+KeFPvbZt/+QzhOmNIINPcw+ZfGe99LqVtX0ozkaR9d+c4Y
         SeovgMYIsTNo9erFphI1mqR8SrcB/325bv8yJVP2xjo5gyyfXYea+9aAsCjtAE/jphZH
         A0g8nJn22orjeN9Y1q0UeDvAcfL545GUAFltPm/gdPbJIZ7fJYs/QkofckMuPcoh+K6d
         LpUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HaRrWhfgAfmS/YOOckG6d+MDNdjiuFfSMiHya2mgMYE=;
        b=HvKbq6q0CY9f4PhW/9xG+3Oslml9713WzU5nlEL9kNn2Buyka8yEbIwXQ0QXge+lxY
         OvpAFAp830wgEgVvccM6he7QiEt+YJoLhhmP5TG6wIL6rv4vKcnvNZ7oPIpT5oYgeiDw
         uu+bXgoK/x7Pool/dEbyj4PxdWa/d2LuhMT/ngnAOI11oJMDUBeNsbaC4AIeKEaXr19G
         blNthyybloSxgPNfEu1w5ih7sKkLSOMEvXu94tTSZ6gflwFh7jkBjCjx2lW0lIl/Bonk
         A7tbhNBbw4zOyD3coRQ+SFatALt8POCQ2Rd1wKPM4+Gorey7hF4CjBUOvYIi82RclZtH
         NtFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DPOeRHaC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s73si537586vkd.1.2019.03.08.23.07.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 23:07:17 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DPOeRHaC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 335FC20866;
	Sat,  9 Mar 2019 07:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552115236;
	bh=oubVqBnpXO9FHBEtlZNlDD/31F3FCNvDJ6jM0oUGmUQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DPOeRHaC2HjZcmQaiY1tlki4YHqkXj+s+19PgHYWr6wwrMxantqUn2Jf8pIxRapnl
	 bQ2OzEjwdOS+J/Nkc50K3YqfzDMetab3KOxqOvnIqKTGsRcCvCqEjCZy7zTmDmDW+c
	 kGAxRM5UbohQ2310/5q11hMA6TsrpjdW0BfH9N+g=
Date: Sat, 9 Mar 2019 08:07:13 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: aacraid: remove boilerplate license text
Message-ID: <20190309070713.GA2723@kroah.com>
References: <20190308202328.14042-1-jbi.octave@gmail.com>
 <20190308202328.14042-2-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190308202328.14042-2-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 08, 2019 at 08:23:28PM +0000, Jules Irenge wrote:
> Remove boilerplate license text.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/scsi/aacraid/aachba.c | 23 -----------------------
>  1 file changed, 23 deletions(-)
> 
> diff --git a/drivers/scsi/aacraid/aachba.c b/drivers/scsi/aacraid/aachba.c
> index 955ddb32aa40..e70b45a74d0a 100644
> --- a/drivers/scsi/aacraid/aachba.c
> +++ b/drivers/scsi/aacraid/aachba.c
> @@ -1,33 +1,10 @@
>  // SPDX-License-Identifier: GPL-2.0+
>  /*
> - *	Adaptec AAC series RAID controller driver
> - *	(c) Copyright 2001 Red Hat Inc.
> - *
> - * based on the old aacraid driver that is..
> - * Adaptec aacraid device driver for Linux.

Those lines are not "boilerplate license text" :(

In fact, one of those lines is a copyright line, and lawyers get _VERY_
upset when you delete them (despite them not really meaning much, but
that's a different discussion...)

>   *
>   * Copyright (c) 2000-2010 Adaptec, Inc.
>   *               2010-2015 PMC-Sierra, Inc. (aacraid@pmc-sierra.com)
>   *		 2016-2017 Microsemi Corp. (aacraid@microsemi.com)
>   *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2, or (at your option)
> - * any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; see the file COPYING.  If not, write to
> - * the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.

These three paragraphs are what is "boilerplate license text", that is
good to remove.


> - *
> - * Module Name:
> - *  aachba.c
> - *
> - * Abstract: Contains Interfaces to manage IOs.

Those lines are not boilerplate.

thanks,

greg k-h

