Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037457B
	for <outreachy@lists.linux.dev>; Sun, 23 Oct 2022 20:36:55 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id 3-20020a17090a0f8300b00212d5cd4e5eso5630203pjz.4
        for <outreachy@lists.linux.dev>; Sun, 23 Oct 2022 13:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=72jm8/87nL3Md2w6XJnnevYHcwL6QbpnxGk2rvFYH48=;
        b=CK02VoXcLz8Oo1jGl2OrcSKE0DbZmpPEeDsioVlwRCe+rYYUhzCpEOGjKsRpsCErXT
         XS9PQQrsHuITMm+lHdqeI32qoguVlQ2hlH6LeZoDnznRPDYUBvh4rmIYWYxU6lIL0gDn
         AKjjOosLqurOab9ZPJhip0OnO5VehA8S0RIys+92ekp9Wo1FgcSoGRxjxPEPitU1mE+U
         EvKTaMkk38pHHsTKsIMYrl3IJCfSyCIAAPxP9+gCfVP9PPSA6A599phxg8G53NeRQTHq
         goX/GYcB8WSgX8OD25KQW4k+ostz/Gy1nY/jqBjrcmf8tsKgPspUD8g214RlAuwvPqNu
         /Z+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=72jm8/87nL3Md2w6XJnnevYHcwL6QbpnxGk2rvFYH48=;
        b=dggHbdB0DP0JP1DSlNVYFQ14TgtGEZ5EK+w0jaF7Q7Z9UsRK+jlEppyDZmJL8FnAJm
         aSrVo+MrDbqRyu/LS87D1u0pXAYEYOHDA/6NoAAArDVJOYDwCqOB3hrHRsw/uvwchEKw
         polDVYL9s1qxajzmenjvdlA+syhHCF9WNh3NUMZIqjkHjL7mJgnzO8MjaxWbe0KWsIa4
         WwsvqDwLIvpi49rUgl8DUzOhnTeFEfQL6coPVeb/UWqhd8TLPw1Q9nMhsbi7rSIpIfNh
         Rm6ibJJLaT+zxJzLUdbHiaftrJZj7wFygD1zj4Yu2+HqvYZdC17snEUYSMxfm1bcLaI0
         UqWA==
X-Gm-Message-State: ACrzQf3GFrTyDhGvu4bFh1rWLtzlh1/6h4F2eqjVJ0t1T5dZzgvz7HQ3
	Vk46LkmB/+ZIMlWaGKadXL0=
X-Google-Smtp-Source: AMsMyM7w28LmA3oOXA5AjAWK3VCw5JalOBaUZUVZXsev9fm96wqG0q1UOhrhT4Nt4Kt6p4v+qdd6UA==
X-Received: by 2002:a17:902:aa46:b0:178:9ee5:c7f1 with SMTP id c6-20020a170902aa4600b001789ee5c7f1mr31111857plr.69.1666557415411;
        Sun, 23 Oct 2022 13:36:55 -0700 (PDT)
Received: from marshmallow (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id x17-20020aa79571000000b0056b9ec7e2desm2165229pfq.125.2022.10.23.13.36.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Oct 2022 13:36:55 -0700 (PDT)
Date: Sun, 23 Oct 2022 13:36:53 -0700
From: Emily Peri <eperi1024@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACCESS] eperi
Message-ID: <Y1Wl5VvsVU9v5c6w@marshmallow>
References: <Y1MVjARgRcJl9xR1@marshmallow>
 <Y1Nm05C00xBPIx3d@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1Nm05C00xBPIx3d@aschofie-mobl2>

On Fri, Oct 21, 2022 at 08:43:15PM -0700, Alison Schofield wrote:
> On Fri, Oct 21, 2022 at 02:56:28PM -0700, Emily Peri wrote:
> > Hi,
> > 
> > I'd like to contribute to the Kernel Newbies Wiki.
> > Thanks!
> > 
> > Best,
> > Emily
> >
> Done!

Thank you!
