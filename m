X-GM-THRID: 6660473635314073600
X-Received: by 2002:a24:2ed2:: with SMTP id i201mr662426ita.3.1550762363610;
        Thu, 21 Feb 2019 07:19:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:6c09:: with SMTP id w9ls803337itb.2.gmail; Thu, 21 Feb
 2019 07:19:22 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaYP5AyvwHcQPR7AZaLeV2Wjpe2jZJrWL3PO/0xzcatbFn9zLZL751HXEvKc+HCZMpOIiPw
X-Received: by 2002:a24:2289:: with SMTP id o131mr9757503ito.7.1550762362654;
        Thu, 21 Feb 2019 07:19:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550762362; cv=none;
        d=google.com; s=arc-20160816;
        b=f97N8C1yVXNS13m1yUf/nrOgI7j0GsP1KiU7/K+nP3NlfsW2pkO1OHTXLcgNMCH/Tb
         aLf4ROdw+GcEdNiK0Bzm0Ns6r9lh3+vwuZJR2wZtcumQ4hysxXGhzWpTw7xSpXSGD9BZ
         KTOIxoe4im9l6ub908rnE6BJADnKB/PgTicXSlPpfO+F42xwSAKz5mG8F5bJ/bcuTSdz
         1JKP/hQggT4nX9uZjhQZoQl4x4KoOHdwUNdJ4r98ghmHydvek62pSEQoPdBBYIfkqiqv
         24EkTM1LP3xBuRc9+wCFQXurek1OKvWeNuq3/dENI8ASTVyFs+v9dREQQZawPHXi7hs3
         bKIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=HNUZ3yJwElfBLLIfwAi2wrSpZftmBcN7hdXMq45m9y4=;
        b=tkGjplEXabwnkE7F02OsiDTZJfO0HNSbE0nrdbS7zIsvoqISZmE8cuhF49jMEETjf5
         MwTJjLxdla0kEwNu8vONQFhkeUc2AfgXQD30flrhz4coAgKa90Uunk8FPtvCynL/SkWK
         H8/OqHZuI7NcjHuc5Lp8gPBJNc3QSAjK0xqPl4E5j413tCVW1/6Hu9+MeGqofSEa/ytJ
         kwgjntQcA6RbIB+SIFeMAuffy55B7f+MuKLAe05TPJQBZLRihKLJlTZ1YB8gWyGKXyHF
         btx+cpQruNXBK+lhAjtOqvbu32pLTtn5W62rpjBoWUREx5i77UcveuyetcSIJhyStbdu
         8n0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Us+MHwI6;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id c191si356721itc.1.2019.02.21.07.19.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 07:19:22 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Us+MHwI6;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52c.google.com with SMTP id m1so13822739pgq.8
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 07:19:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HNUZ3yJwElfBLLIfwAi2wrSpZftmBcN7hdXMq45m9y4=;
        b=Us+MHwI6gZ2jDpRw9W3tGlsvF7Vxj0BdLpdh1LqhWek0oUGSKWJhdRDaZZsWDyCyJG
         5XSdb6x7efRWNwueYSzLYU7GvPP2zFXU/BZ2Kf8fwz1Lh/1WjxjkaWkR/vyE+brYg7fh
         wOGa8ZZu/ol26NN+bqRcPn2DpbtqFCsx9lodCiC1E9KT0snnxEGknmp/mEhsrz2Z8pPf
         dn54TztrMqrL+7VaNBq0ZxhvYgGdzQh8VYq++1+5C9JSmCsNjm2PKTKr8IWyA6ZX2ovm
         QOw3IaeXSOtOralhPayU+9z5lgyFkhRHVHvM+zwXTkxxQ/h+TKa7ipKIrocWrmKXiWAj
         3Blg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HNUZ3yJwElfBLLIfwAi2wrSpZftmBcN7hdXMq45m9y4=;
        b=ukBvVlEX7H1amiyNKcLzFfEzNbOGCwp/NttYjaSnd19RyyuicgmXqpk+8y/lFX9/cx
         Ax72F8sjP83pETTNiz2LyDJLcgJ5/qB8uAiPC5FsWPTpcTJ5dI1EhHYkhtdgf6LaNwW3
         RSM3hToqe0kV1ncnccNTTjRGpedH8OpwKKfN+wR7PDaVaXCXKD2HBv7kt61JAWaQBDxm
         0HT++OEXLMFew0tCd9AXM6Tz5Yxv5G6+kLGriB7TkSnzg4aTdeGQNZGyD6hqFVNfZ0Ma
         KbafKm1KX/j8nkQbArjZ2FmSwgu4bTOj7otQ6jQMb8xpvpo3yxkHMF0IxwkOHij5CIDi
         l2Kw==
X-Gm-Message-State: AHQUAuZHMuFdSjEyLMhkWTpgZ7yjO8tZE1VeCOcCpl2Fabk5Gc4H6P4n
	bPbp48uLW5ldIevMiDmNcO0=
X-Received: by 2002:a63:2a82:: with SMTP id q124mr34688849pgq.402.1550762362305;
        Thu, 21 Feb 2019 07:19:22 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id e9sm83438778pfh.42.2019.02.21.07.19.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Feb 2019 07:19:21 -0800 (PST)
Date: Thu, 21 Feb 2019 20:49:18 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/3] Staging: fbtft: Fix Various Checkpatch issues
Message-ID: <20190221151918.GA1764@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This series cleans the following checkpatch.pl issues:

CHECK: Extra blank line not required before closing brace '}'
WARNING:EXPORT_SYMBOL(foo); should follow its function/variable
WARNING:line over 80 characters

Bhanusree Pola (3):
  Staging: fbtft: Remove extra blank line before '}'
  Staging: fbtf: Declare Exprot symbols immediately
  Staging: fbtft: Fix line over 80 characters warning

 drivers/staging/fbtft/fbtft-core.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

-- 
2.17.1


