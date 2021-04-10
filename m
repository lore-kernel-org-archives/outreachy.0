X-GM-THRID: 6949336424403435520
X-Received: by 2002:a17:90b:b03:: with SMTP id bf3mr16422495pjb.100.1618020762438;
        Fri, 09 Apr 2021 19:12:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:c595:: with SMTP id p21ls4834376plx.6.gmail; Fri, 09
 Apr 2021 19:12:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyJx4hmem2DjGi5IkqVluAcwHbeeXUtDJkR+K8aJTIiGV5G7IktLCq5K+Hm0vr4hHXEPDxr
X-Received: by 2002:a17:902:e544:b029:e9:7af0:9c78 with SMTP id n4-20020a170902e544b02900e97af09c78mr13613486plf.25.1618020761379;
        Fri, 09 Apr 2021 19:12:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618020761; cv=none;
        d=google.com; s=arc-20160816;
        b=BOhvib+GBWMzBmLQB6SBLUW8PFBHtwHhfQ1txTz4Ekx6gjUhxho9AQp3aaWm5Tvgf6
         uk508tlqjodfmzpJKTj/1BkBBvJYgDpF88PYtK+tSLAYt6FnfN1VNcBM6Iun4mn2NYJa
         1kPC0in5acGntrAXA90szXCa4tjUntWTrgKv5kQ245mefGSBecX6DxqGNEbOCWk5L6hr
         RGYqDYYLTFm59vY5oPuC7eB26xQvGOYEuxbEFT6AkhOy1AqJsOzuWcx+114Xq9Y0g1dd
         7B+kdN6hX0Bi6znP+vU6uNroFEcDX/IUlrJk/p/AjS0v4lnu+8gfEpfHhukRhz5nCPvz
         YAOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=hbVf4wVfNxnKZxFZJSlPx/JJraXw3lheZgCYNdZrqqk=;
        b=MBkTPEcpegMg1cNJEZ9UbEFsOGM8GQOYrz5Fhx8LI7QqXM+nZqra4Tx4iveGsY/ae/
         qHvv6jOReLzIaU3VqJOhmY9isWEAPp9O5B+uqAEdKBAwsIaMWbTNofENysZRpNHLh7yp
         hsOskLMU9Uft43a8u4Oq/rRNi5aBwoAnL0N4naaI295DrSkaFmgkXoJNoxoQfMpUhzau
         H9IgPrykYW9GkeAuakVRbBo+soPfTWVy7pJUuxo/CyGvAhnIb5+aKcxpjZtiiV7y2lOi
         khSNAdhcPqnXVPLUwgfLT6zXQRNdQExlMJpxutaN440HHvVkSFBfo7Y0iaMoz1cbLKGn
         coUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lOYTBpnh;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id t5si523935pgv.4.2021.04.09.19.12.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 19:12:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lOYTBpnh;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62f.google.com with SMTP id 7so3604959plb.7
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 19:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=hbVf4wVfNxnKZxFZJSlPx/JJraXw3lheZgCYNdZrqqk=;
        b=lOYTBpnhtHMJ+6GMN0ThIPlxCD/e4HCWnsMR4Dcd1BxZ0UNCjmAZu4EUCDAVPOfcI0
         0QV8/GiuXZ+nGbLOxRUptkSwDmwb3iKzNuS15pDZtp8HKIJNGsGt5E3kibZtMDMtEu0P
         5s713UzUcpIN7JYQnm+eOHdv6EzeACJBi7I1ET0YeKkfn1oP4wPOQBU/oLc8udgC8aSQ
         u0d9LIv/jJeh57b897fxDpm22+CNFUMv02TuKYayNqqgY/7IrxYHFxKduijD5V7YAnOE
         e47ImFrcn2JUfsld0N7m0B4CuT9FvX2J3qsw7D1IJrJA4RyTrlr2kTmZPfXByK41iRi3
         GEmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=hbVf4wVfNxnKZxFZJSlPx/JJraXw3lheZgCYNdZrqqk=;
        b=F79YA6FyYICsjg8XsNvkkLR1/Eekxvp1RY3jUvFPvE8b8yq9zCdJE5NdbQa9Ua1K5M
         qeYJ+6GYuh2sf7QWsT0Sz/ZqleZbG7WN46m2bVU40h2WcYbJAczmKaznk9QUPKfkyRPr
         IzL41xFfswFRuZ5GHug1xlenAmM3W1IKN4WHdXde5qNGSky5FcUMxWQ9M4WvoVsDFM1c
         2HWBH2Kli2CmyLPt5CRHcaALFJZSakRV7YhZooLXRBAwzcRPcrMGzAp7zH2VuGeBXLkW
         QYEnBr0ERFrdqPQ1/ul0DrFEeBPVHB6tb6qXEIr3RLJ34T8Csgg5wplXPeEtRX7p63jo
         262w==
X-Gm-Message-State: AOAM532zrMhPYQiHp1EPOs6ElssNJvxUHtPVVAxXXN0g/Tk61oe8Gzdc
	Bvulo+HzZTyabtCFFLfFbF8N2X5YlRPSMQ==
X-Received: by 2002:a17:90a:a616:: with SMTP id c22mr16336354pjq.94.1618020761057;
        Fri, 09 Apr 2021 19:12:41 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id x13sm3523524pgf.13.2021.04.09.19.12.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 19:12:40 -0700 (PDT)
Date: Sat, 10 Apr 2021 07:42:34 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH 0/3] staging: rtl8192e: cleanup patchset for style issues
Message-ID: <YHEJkknTdEwID9X+@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

These patches fix the cleanup style issues identified by checkpatch

Mitali Borkar (3):
  staging: rtl8192e: replace comparison to NULL by boolean expression
  staging: rtl8192e: remove unnecessary ftrace-like logging
  staging: rtl8192e: remove unncessary parentheses

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 26 ++++++++++-------------
 1 file changed, 11 insertions(+), 15 deletions(-)

-- 
2.30.2


