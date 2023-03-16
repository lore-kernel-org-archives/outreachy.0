Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2A0211A
	for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 08:31:23 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id ix20so936123plb.3
        for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 01:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678955483;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ccx24liFdpImd3uSuFC5mSCZnDFYDJHzOJ5ZCa9Gcqo=;
        b=Y9EN/0X7hpkchoQczzqFWjpAAg5S6WjgQLAgBW4GkUUx1Ywppmd3UdOKX6u3uNtrQW
         7wGKvJSktBVAbD5pR7sUyFxrS+28IOsyOdnSTJiEf3wYSzBEEhl3iH+enDALJgX8H9b3
         N4HcvYdXhvpE4vDpMajEmS21KQmuvSGLs3uOy25BK8Vt2tfUJvb6YFsLmlQhwtVFvZx3
         kkouOuEBbmoeMfW/823GhcaUCdoLrskO7yVrvOIAgrcsEzosIspR+UqaP34wGFEAsaCF
         WAmRPV0WPzZYsIujRRRRpGvT3bxlX7sA12GmLJMtud7QN9rEYtguHopZ7hVaA0L+3xY0
         xbww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678955483;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ccx24liFdpImd3uSuFC5mSCZnDFYDJHzOJ5ZCa9Gcqo=;
        b=5BWSxgc1Al37Ib83GHyUyxvoy321rdHFSDK7hcOtaMCGvbv5jv/bKDM9ywVVYj0V45
         CphD+jmS1BWPh5YAJfz2Apa6Vow6uaVRaevj3v5GFOGW//fep+d1l2hZ6xRKE0FYB6Hc
         0TpOBQyNOdT7A+tUjDiwYTafcmhp+FWZ9s1vKmBlNX60o818jrznzolKYfUjGef4vsll
         3ghKaFL/gd97GwtRPr0aa2eQMwlQ813J2AwypRjEK4APjG0krbTgylRE0oGU6V2RY5Jl
         W4G2UzStDrNB0BHvIJVZi6/JQApZMuqveYIpEJxPhrg7gEF5jYu2WDwZ7F9g7JznWCFk
         b0lw==
X-Gm-Message-State: AO0yUKWqo8ya/ldPcGOkrIl/9CfwIfkyPB3TvxL3vxqvr/c6YdBdb6jg
	TqD+m1QO4MOJeLzuEYYaBSY=
X-Google-Smtp-Source: AK7set+qdQNfyZrQgIJVt2byyqP9kfcsrI/KtQGws+UIO5fchI/jTVOE1bFT95B6RtWiOCBvFPKKKQ==
X-Received: by 2002:a17:903:70e:b0:19e:b6b0:697 with SMTP id kk14-20020a170903070e00b0019eb6b00697mr2020672plb.52.1678955483292;
        Thu, 16 Mar 2023 01:31:23 -0700 (PDT)
Received: from sumitra.com ([117.209.126.134])
        by smtp.gmail.com with ESMTPSA id h5-20020a170902b94500b001a1936e875asm768320pls.272.2023.03.16.01.31.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 01:31:22 -0700 (PDT)
Date: Thu, 16 Mar 2023 01:31:16 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: sumitraartsy@gmail.com, outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
Message-ID: <20230316083116.GB47053@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230312170757.GE28100@ubuntu>

On Sun, Mar 12, 2023 at 10:07:57AM -0700, Sumitra Sharma wrote:
> 2. The outreachy document directly links the ".rst" file
> https://elixir.bootlin.com/linux/latest/source/Documentation/process/coding-style.rst
> at many places under different sections. And as noted by fabio there is a difference between the
> .rst source files content and its corresponding .html file which can lead to confusions and missing
> important information. I would like to suggest to change the links to the .html/.pdf files rather than the > .rst source files.

Hi mentors

I would like to have some update on this. 

Regards,

Sumitra

> Regards

> Sumitra

