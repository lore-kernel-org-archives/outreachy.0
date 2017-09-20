X-GM-THRID: 6467836648401928192
X-Received: by 10.46.80.25 with SMTP id e25mr69229ljb.26.1505910569431;
        Wed, 20 Sep 2017 05:29:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.54.141 with SMTP id y13ls5183wmh.6.canary-gmail; Wed, 20
 Sep 2017 05:29:28 -0700 (PDT)
X-Received: by 10.28.215.195 with SMTP id o186mr426421wmg.9.1505910568512;
        Wed, 20 Sep 2017 05:29:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505910568; cv=none;
        d=google.com; s=arc-20160816;
        b=Qrnnqb7/mSCF+ZWKCoLQNZoGpC5OKMlcZFlwNPxgnT5bewZN16OBxhmHrAaRVrzono
         dXLzCGL0gcBtwaJk8rh9cRLcIeE52Ihgxad2/U/oUl8Adz3lI7QgFQjXDBbnpVvVLV8U
         Si3dgMx1tw+Zvoi4UTvhVupq8qt9fdXuwQ7P0qnl7PqgEY4KFRPrAcaYG6vHl0JGMFya
         c0O8s10Ta8H/3KbTFmVhPF6bjymrOzSZVk7rCst+OrhGy2QlE/Xt7DS8VyMINofQSaIb
         F0POLnU8F3rv47KKGcSvq4ozFMvwSXGcHrDK/MQrOa6zJsEMzSe9fEcDW0qJwjyl741Y
         0tlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=cK5TLONZnWjpoyU8WxjCY4/43b0kG0aDddtlhy9c6yQ=;
        b=GtkPaJ7sMjB8PNdGZ7wFqo1fte+Yq78BMN1spZL88XXYg51gGOfWM8y+G8+jFY0YYh
         SMOQRJmk2PNvrwZGUgmqwKtItPgIvDEMZiDBIOiHpBJD7FND6Ce71irBbYazJJESEZB7
         KDA1aXWyb+x8iK5Tfw/4RJN5zPfs6reSqJ6n4Zp7YessWpTW75SNEEYzl9dbuzLpybU3
         FwwpKZ4o42KSbAq8hhb09DhshHEpS6lmV/2cD7hroHu9v17/n1NXEqqSp3tt1GfJjn29
         rrHWsw2AfGJ0glRH3FKPKyiFJzgTX1UNDNAQFku0XfUtnAXofyO8GJOD2aQoUu/y9dIc
         Vazw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pVtjHLsV;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id q145si166569wme.4.2017.09.20.05.29.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 05:29:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pVtjHLsV;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id r136so2297516wmf.3
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 05:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=cK5TLONZnWjpoyU8WxjCY4/43b0kG0aDddtlhy9c6yQ=;
        b=pVtjHLsVYvMskM7dfD1HnVZ6LR5+0i+dDfA7L1DxfuNXdpahDEWDUXC/93PLassuOn
         CFs6GQY+ZI/5DybNM7HdE9vPCmimL5uMYdzyr16wt5IZ2vjUmJ7NTlPkWsi7C4mS3G4T
         urni/rKUiKuaqbOeLczaseq1EbQDJd9yVT2R95XjhtGCzKAv7j8CN0I+D5orOCInBJq6
         C982sXsodDkW7mv/N+iKH7+FdOil1R7HkFVJqSa0FJLDbDlUMmuC59LADarv7H0nStf1
         EZ/doxqZy4l57ObXLITnHAm5BMR/End6hKY07nq2HIMdT6QhGUd49VKRMPkVatW13HxS
         iAdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cK5TLONZnWjpoyU8WxjCY4/43b0kG0aDddtlhy9c6yQ=;
        b=eantM5wu+cnFhK1KaYqC/1B7yPeYv5MDr0nHn39IWgS4ABmuECeFiJeCWJkFwmQxHX
         kRCAmki0cHKeTHJME3hOvAsRZYKhYrHLavy/zQpxzempKGD1+QL8oVRkQieckPZA/TAB
         fqrxhbI+ISvxW8KGrJNUg0TlhBmJ3vXVJgAnzafDDjeqDbTu8R8ESExIFJneDrUHxjp4
         O4DVZeEouEY0TppiXo2f6HuOsIISiH8f2gtXhQeFM4YoOZspiF+M7aa6EzyTfOTrMXg0
         Z2MklsU5SgoHYLeHYEZJoeV4VETMdqoH0Iswuzwfg8G5F7da7eBKwROYxffzkVQC3+Br
         o9ew==
X-Gm-Message-State: AHPjjUgwJrapMsYf72a4O0qrBf8S8svQqPNRxZZsBSxgiMdv9UBnIwfR
	OZWjGzyca+Gvp2aQSVeQUvvO4aK2
X-Google-Smtp-Source: AOwi7QBVcabj39Yq+SntzD+SN2NCQL6GAI9U6mrV4jYQB0WUbY3EP8mOL6V15JPY8ttfhOaieVMeqA==
X-Received: by 10.28.113.200 with SMTP id d69mr4157711wmi.152.1505910568245;
        Wed, 20 Sep 2017 05:29:28 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id t141sm1643608wme.33.2017.09.20.05.29.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Sep 2017 05:29:27 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/4] Staging: media: atomisp: Fix style issues
Date: Wed, 20 Sep 2017 05:28:45 -0700
Message-Id: <cover.1505909511.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4

This patchset fix coding style issues found by checkpatch.pl.

Georgiana Chelu (4):
  Staging: media: atomisp: Use unsigned int instead of unsigned
  Staging: media: atomisp: Add blank line after declarations
  Staging: media: atomisp: pci: Move open brace '{' on the next line
  Staging: media: atomisp: pci: Place constant on the right side in
    comparissons

 .../atomisp/pci/atomisp2/atomisp_compat_css20.c    | 27 +++++++++++++++-------
 1 file changed, 19 insertions(+), 8 deletions(-)

-- 
2.7.4


