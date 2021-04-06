X-GM-THRID: 6947995427572547584
X-Received: by 2002:adf:d208:: with SMTP id j8mr1313795wrh.115.1617706247320;
        Tue, 06 Apr 2021 03:50:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:58f0:: with SMTP id f16ls11400676wrd.0.gmail; Tue, 06
 Apr 2021 03:50:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyOWSFz+zV3kizA6SqQBrLH9D5AzPWZbmDFZ5qw/Fu1l5pvOChkcgWdhZkb/q/ARA5tQ86o
X-Received: by 2002:a5d:58c5:: with SMTP id o5mr989558wrf.35.1617706245932;
        Tue, 06 Apr 2021 03:50:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617706245; cv=none;
        d=google.com; s=arc-20160816;
        b=flRCtasH9PYg6OLiz7aGNve6AY8OaehAHHIq6yQFVgKzxOC7IvbNNGwzDPidcoFvvH
         2C2jfVg1zHO9EHhjcKUlSFhcYgQ173gYWq/xblRpmgzMLLjEPkjwthNLEF9AuSAjy+En
         dKEuL4CDOkoG8+6kEU2qAQiiJoRsMUAYeoVpeoB5IMTtOiyuxTABbsOHUb7YDFgLO4fj
         S3AlCmIfNi31sWpsWNo6ib3tp0pgelLhZTP06dfezI3UceUWripbgvjmsaHgOKhc4uNG
         NU+i/6RmUdtgnvM54ofoSKctKYjwgwqPYADP/5OXtx0Qyuv+3yWg/O887ut0JYbAJXXQ
         fvRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=mxjXIZD5cMpbeMxIQK6zoS+Nrxtcej01ukleZy3/104=;
        b=HJwyASkDQFKzNDyAK9temncd7uZZpynWKhIK3ZrXUklI01oywwSXsCuIZnJnQy+j5A
         Q5RAvJA97BUN5IlVPOWKTokHwdOZ0zBBI2CrqypH6l2JqMKWmKPgjhYYr7+VwaLdxJ2n
         CpgXKfgOL72lJQhjMCLMYIzRNMkNQwzWxPEjUVMXZag33cyjhO3jcSQ1AmbN+MiRfZif
         UbskaqYlrdbmmgBnyyBtJhBsYgSVV5FmLUbz2WptUjzqxIMKg6LC5Ky6A3fIirKkyUza
         pSYbuCM1tWWufYH7V+Gp/3gKvNtJDwACH7OvZYvefb4fQ7r8UiXRQWPLBv0apBMCq0tz
         7U6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TvtBUrGZ;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com. [2a00:1450:4864:20::229])
        by gmr-mx.google.com with ESMTPS id i8si1029544wrv.2.2021.04.06.03.50.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 03:50:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::229 as permitted sender) client-ip=2a00:1450:4864:20::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TvtBUrGZ;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x229.google.com with SMTP id 15so15999094ljj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 03:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=mxjXIZD5cMpbeMxIQK6zoS+Nrxtcej01ukleZy3/104=;
        b=TvtBUrGZBuveLyuwoK28cpmMHuYCafy7qyDVB25cPH9Gvw0KcfcRo5WpUjzIVbJY4F
         Fe5cdO3RYYai4zH9V8b0jQ6L6kHsnlMCw+c4RkcYXCQ8OCCV2oHjp1eGn7CfR6+xulnD
         Hze3xgSDb1EFdgjo/uW5OL7aUNeCahZ6N5E/26ke7rugC/8OwDQ2KIcS/IsXbAqdmXAb
         +04g4rdFrpuyvpZcjQSD563IXazFwATT+/ce4LUTkKHpkGCKygJROxKJCno8R9rsbP/q
         GdkH4/1Pnj+5QjNxnI3MTJ3/99fDwgCwNWD+8UrrMYaRnj2EiLnSQouSuNnny+hDcTPD
         IgSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=mxjXIZD5cMpbeMxIQK6zoS+Nrxtcej01ukleZy3/104=;
        b=i403LqQl9iWuAxgoYzJkUXKIxbjfSvKRMzy0hQXuWeR38jRnmgneCH5skZ2Epvryjz
         Of9Zgr6tDIZ9aN4fQ0FQ9QCcTCmMaFSEA06LjCPrpxLiZljFy2+aUuOIBZdDVTzChzJY
         DMKQIRnu4G6kspEMJ6r4PjeEPsYXnP/R5FPzmMwrJw3z2eupEyv19K3fqZWDov7KSCCp
         Flm3LaKfVhQp9YnEkQfCkddo19ivELUF3Heh+4tv1ghymXAEPO0SFpUgHBxeCt5bBxtd
         TVjFm6owO2GJTOA1qEuWztLqL0WtO+zEHpv/M9XKVJmmnPAXYD4qdj1dWmVFIKdA+dGX
         snag==
X-Gm-Message-State: AOAM533zsw/th0kEKXzaqX6EVdwwuIwKGVO2vzsLo1L7yS40xXNaGG8a
	78c2i8U9LNhJqOcKkCJ+pMdJ/2WYa56Agg==
X-Received: by 2002:a2e:b0d4:: with SMTP id g20mr18916639ljl.127.1617706245366;
        Tue, 06 Apr 2021 03:50:45 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id m16sm2117307lfo.17.2021.04.06.03.50.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 03:50:44 -0700 (PDT)
Date: Tue, 6 Apr 2021 16:50:33 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: rtl8712: rewrite comparisons and remove blank
 lines
Message-ID: <cover.1617705825.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset replaces NULL comparisons with boolean negation and
removes extra blank lines after an open brace.

Zhansaya Bagdauletkyzy (2):
  staging: rtl8712: Rewrite NULL comparisons
  staging: rtl8712: Remove extra blank lines

 drivers/staging/rtl8712/rtl871x_io.h   |  1 -
 drivers/staging/rtl8712/rtl871x_mlme.h |  1 -
 drivers/staging/rtl8712/rtl871x_recv.h | 11 +++++------
 drivers/staging/rtl8712/sta_info.h     |  1 -
 4 files changed, 5 insertions(+), 9 deletions(-)

-- 
2.25.1


