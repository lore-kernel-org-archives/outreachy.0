X-GM-THRID: 6471910913633943552
X-Received: by 10.99.122.81 with SMTP id j17mr146555pgn.5.1506936620920;
        Mon, 02 Oct 2017 02:30:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.85.142 with SMTP id j14ls1053038pgs.3.gmail; Mon, 02 Oct
 2017 02:30:19 -0700 (PDT)
X-Received: by 10.99.120.197 with SMTP id t188mr1217673pgc.173.1506936619943;
        Mon, 02 Oct 2017 02:30:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506936619; cv=none;
        d=google.com; s=arc-20160816;
        b=PGvbDfrxFG4qZAWe2mXu5lEOW1P3iyd5mZsb8WAFGxFXHzdJE2hF2jnzG1tRk9cUC7
         4Tyee1/P5Hz6vC0O4dkPcqVTHl0+pQofGevQSM9+LHuN0AoBswGuPJD54s2fOnRmzTKd
         VtZOZqBmKpKvLPEyGrpou9qkRpKZqzTIlOB9DZI73smJD43SzilrTkRNKPHCmVnsUW+x
         ZrKkIJ9siqIizPy7IiZGqRx4nOWqdohvuc99hkAOg4pAHo4k7I2xPAstc/9rN87tydWH
         6MczxchK6BXUA0tCIy9R8RpfU98FIyLP+j5fZEkkuzd643B3U9b6ycFRj8VnabaJ1bcr
         2hEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=B0OQGrnNLMo4ghcntQf5sZxZEN9HOfMKctAfHH4+EpA=;
        b=OesDr8GoI/6rDD17X7nAso+SRlRCuinyRTPFqpDEJo8y3OeW2dbiV1b8ls1lcUJBf6
         OJSr8LNZ9ZuNqZ3rLb75ooaUkV8fS0xNQeIj8oNWdLuSVwQxkZgT3KgQgbVb5ET6iI+p
         2fYn2Kl2nXHwagYkofL9N87EInQvmJn09N3nHkvJzuDDlynOM1b4EyHVbPNBYfh+bhXB
         FbsNk4dGzxv5d4T59hJtzUcwD91URsFpetSkf85vV7xyy8Ifk5Pb4rZ5kkqNNwvfEhgp
         E9r9ewOHvWFi1p+fRSHZFmOl8wbnxWBbU8NQaXoxm468xpQgz9bU9r/DhSI17qwzN9xM
         YSKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nTqiiD3x;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id d207si976446pfd.16.2017.10.02.02.30.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 02:30:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nTqiiD3x;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 124so811297pgi.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 02:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=B0OQGrnNLMo4ghcntQf5sZxZEN9HOfMKctAfHH4+EpA=;
        b=nTqiiD3xMX+seMRbDEgYszXH9W/VZPNznKeWqgqtx1sDYCi7HdtiiXdz7Wl+mJOMbN
         ADBgiG0LJAFMiUgAWLPJj+ifabQAPL5Ky0TPZg/5F9VgcpLDCuF3FT6qREPO9BIiTDW9
         S08RHIKK5mAX4QIhhQdhDa9yaDzAhKZgiwVaiGHFQS1QxxDm32Gxpij8uvD8qJyL+JXQ
         LHAOM5jZr8xP+Q0OBOgXp0yyFc0qpxIAR+r7GNcXr0yO03eV0jb/Cn55kuN6e34oe/if
         XpY/BVb/mMaZ1vpO3h6Z0RehsztTJn7hADDIQUFGVbGr18PwaBHUHNldcFydgI/Q1zlW
         uEJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=B0OQGrnNLMo4ghcntQf5sZxZEN9HOfMKctAfHH4+EpA=;
        b=OXlfFNp+s2+t1EzHPr987op32UjxvjmTvqLS9iOmiIRjwwZFQI0X1VLSxK9j9CyoBJ
         xNsdsXkCYI+u/vEid7ETG7xt7om4KJd7Y4yPCiLXG6Kb3wg8fDl7aINEbrbrZz73ur8i
         vVfMDikQOcPOBRcm9AdQJH9Irllfguoht3NO+VBiu4iMy+mNSdEO7AXL0oZcJ22hhrG9
         xK1IK2h5lW6vYB68nvNEdlWTA9x03Fn/Kw7vs1b+lslsxcDzNwKimDWpjbL8hb6Aiobh
         Tk4Gg3oTQmyNH072nqr6XVfL4ql90pGtYW7yMGdTB86ulZXo6qFdlUzFZKcCisjg2cY3
         fLjw==
X-Gm-Message-State: AMCzsaWGq/EQkZW8kfbgk3HjJEkwyfRD7eCDwDnHKCGxIa5Jvov80ryQ
	+C6qXxCWdWvhHLHaSm1crL1cq3ZZ
X-Google-Smtp-Source: AOwi7QD+XsBwuFMm6kYXDyH0OdAjZYGF0OhNKgJHt9CmxnRoPCf62x+kWLrupHymjw4gQcf+uXqJcA==
X-Received: by 10.99.96.68 with SMTP id u65mr5277093pgb.355.1506936619176;
        Mon, 02 Oct 2017 02:30:19 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id n12sm16882317pfb.131.2017.10.02.02.30.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 02:30:18 -0700 (PDT)
Date: Mon, 2 Oct 2017 15:00:13 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: teddy.wang@siliconmotion.com
Subject: [PATCH 0/2] staging: sm750fb: remove typedef for enum
Message-ID: <cover.1506936290.git.keerthigd4990@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset will remove typedef for enums in sm750fb driver.

Keerthi Reddy (2):
  Staging: sm750fb: remove typedef for enum in ddk750_power.{c,h}
  staging: sm750fb: remove typedef for enum in ddk750_sii164.{c,h}

 drivers/staging/sm750fb/ddk750_power.c  | 2 +-
 drivers/staging/sm750fb/ddk750_power.h  | 7 +++----
 drivers/staging/sm750fb/ddk750_sii164.c | 3 ++-
 drivers/staging/sm750fb/ddk750_sii164.h | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

-- 
2.7.4


