X-GM-THRID: 6471473522622332928
X-Received: by 10.28.175.2 with SMTP id y2mr771796wme.7.1507047703509;
        Tue, 03 Oct 2017 09:21:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.144.209 with SMTP id i75ls4214251wri.12.gmail; Tue, 03 Oct
 2017 09:21:42 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCQYW0OEdoHlKmxZfGR6DjypnHWhCZJpKjfNqXsqA+xGcNqNjk18sMlEJxniAmxoKyZrJdC
X-Received: by 10.28.159.206 with SMTP id i197mr1677221wme.16.1507047702790;
        Tue, 03 Oct 2017 09:21:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507047702; cv=none;
        d=google.com; s=arc-20160816;
        b=N8+SRzkaG7SiatiQYhIiZNVSMDZjx3miVfMdqnM4gw+tTpGqjEaIUAqnsvx6E/Npbj
         vmPgmwkXs24WqQ5cf2FjEcNRqQb+xQwWgaYYxLDzcV6HiH8wV9D3I2Obr27wcSPnWJkE
         IuqsPhjSohISbM5M4Gc1QFbNSnEiQxor72iVhduT2hegN7aYBuJx8Ol6qfl00tfw5XcP
         QE+DAj8n6ZumVIMTLFOdXupBbLLz5C9txkto/j4ZhrJWwVs8QvacbVUcjgpioY5WF+5n
         NhWQAo9zDG+AaGGqfySeZS8L64K2/ACttMWF4YVS5F9puSyB13s/LVoNHy4zIIK1z09T
         qFvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=LXgzvLUyOfFbq7RAogNtLkOFWb0I1aD3iu/SiWo853Q=;
        b=r4XuruBcOxkYv3+B++v2f1IXh0haT/hqmIeW7feZ61tIaTQ5mPVeroNkr4uH7Bnn7n
         Ozs9AHa+wu4ovO1FtKi87L1Laa7RrwWBAhbclH7PBq1ct+3u99L/8XrF27IZQ0SEvIlY
         77olCpUGWjFyhS/YhH8BZ3x9eLEtmAqwUpVUHrBVlJR4I5SmmbfD+rE+8CkYC0aR4MnY
         TQ21Q6GHM1XEuZKtH0MGvPTxVPvDyC46hmisRaTKiQlpt4IFIs39+3uE9aByMG18XJMd
         uIm/6NEWSpQXXKXm8a2eUvqI8ae/bLxWkV0Tk46p/wnLagVmg4btAvbROiS3uEF1ycvn
         oIdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id n82si1000322wmg.3.2017.10.03.09.21.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 09:21:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1C35F258;
	Tue,  3 Oct 2017 16:21:40 +0000 (UTC)
Date: Tue, 3 Oct 2017 18:21:50 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: rtl8188eu: Use __func__ instead of function
 name
Message-ID: <20171003162150.GA26630@kroah.com>
References: <20171001220856.GA2915@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171001220856.GA2915@domino-MS-16Y1>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Mon, Oct 02, 2017 at 01:08:56AM +0300, Mihaela Muraru wrote:
> Use identifier __func__ instead of the name of the function.
> 
> Issue found by checkpatch.pl.
> 
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> 
> Changes in v3:
> 	- remove unnecessary ()

That goes below the --- line.  And this patch does not apply at all,
please always make patches against my tree, not your previous patch that
was not accepted yet.

thanks,

greg k-h

