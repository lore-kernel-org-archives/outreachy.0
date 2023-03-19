Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD671846
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 13:10:25 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id fy10-20020a17090b020a00b0023b4bcf0727so9810322pjb.0
        for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 06:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679231424;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UKX7CZXUD7mV6GYnOSHpsg35PZOfh7g/+aCFA0t6V88=;
        b=CcQbVvXsBQU4H/9cOVeWpS+/ZDT7TZQ0WKjkVSf1uoazDt4SVToMqZqzDomrRQyNqL
         5T2xKTRt5s+IO18VIJsPidYkziX2vYpo4iU0BUhdt+Z8YNqn7jh1hgtrC+7hlvlky1cI
         pFOYhziNf4In8Wv9s3xq9ZI9NlJuUdoM6CtwzO2x9Ro66jvk3KaLi1mXMU5pxVQlj0qO
         0LCqnUmC3trEn38coJDCZlzTV/ph2QQfDmShWEN1pd615O+dKAGsXPZQYsSQrKapHmpF
         GsA/yKyjgDTjUh2eJGxJuZJsr06SKRHGkUsmHgn0UrTJdkttiXF4IegDnXuZZl8NDdwi
         DzOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679231424;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UKX7CZXUD7mV6GYnOSHpsg35PZOfh7g/+aCFA0t6V88=;
        b=n8Da6p1E+tlAbg5quYsJfc1JXd9I8LGZ/8xPiNqQBP1LjFjSkaloTvfFXAPNmhgVQy
         awBqC4AuBqUn4km1rMH12Ah16BrtamWs5207Sp2w0HSqa7xiKLkou9i7+/qqBbDqnDy8
         ZiKwXjtDwSrwWAdcGtU8uk31A0BoQFqDBtH0BB0QJ9pwJ50GGkWUutYckoA2Xcf3UTpa
         AgA0OrvC/WkK3fn6WlyaXp5R3/PS4Htnc0qO2WOkPLeMD+E65HPwumTm3T5M4obice58
         N97bNXNiOI9rY1j8TesjeNBtZcyM7zEGAmCpis2i9CBCyy/8nz87iuRIRlaqMgmhGcAC
         jOKg==
X-Gm-Message-State: AO0yUKUgP/545x3uMWBw8SC8tyGIoctSmAcwfDc8CVYW/eUmx4NWFPNb
	RWCRjYOJaDnG07fnofPQ7Z9RCnBGPqmbYg==
X-Google-Smtp-Source: AK7set9UYNr+fA3kcOC8lfSOj9I/v7Gl9vl+tT6jG3+AL5/GpKQEK7yCLXJZaTL+V0iQ/hr332tmow==
X-Received: by 2002:a17:903:22cd:b0:1a1:a0b7:7254 with SMTP id y13-20020a17090322cd00b001a1a0b77254mr12848741plg.62.1679231424346;
        Sun, 19 Mar 2023 06:10:24 -0700 (PDT)
Received: from sumitra.com ([117.209.117.91])
        by smtp.gmail.com with ESMTPSA id t20-20020a1709028c9400b001992fc0a8eesm4710547plo.174.2023.03.19.06.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Mar 2023 06:10:23 -0700 (PDT)
Date: Sun, 19 Mar 2023 06:10:16 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: outreachy@lists.linux.dev
Cc: alison.schofield@intel.com
Subject: Outreachy firstpatch tutorial Wiki updates - SumitraSharma
Message-ID: <20230319131016.GA61225@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi mentors,

The changes has been applied to the kernel first patch tutorial as
mentioned in https://lore.kernel.org/outreachy/ZBYYxMfFgTej3DqB@aschofie-mobl2/T/#t


Thanks.

Regards,

Sumitra

