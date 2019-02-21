X-GM-THRID: 6659980627461275648
X-Received: by 2002:a62:ae16:: with SMTP id q22mr13805831pff.147.1550734355421;
        Wed, 20 Feb 2019 23:32:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:5c1:: with SMTP id f59ls970140plf.1.gmail; Wed, 20
 Feb 2019 23:32:34 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZfUEYn8+GbeDiLfJADV32oTkuBZnF4kHc/yZtpXUlsE3IsSNT6+v6/9Je6ldIpsAw6mx4k
X-Received: by 2002:a17:902:758c:: with SMTP id j12mr6681603pll.118.1550734354629;
        Wed, 20 Feb 2019 23:32:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550734354; cv=none;
        d=google.com; s=arc-20160816;
        b=EuxcCr7zHb8bEgs8VsPB2sGtBGfmTGIM2/pRYYfL9M1cViL3rE/Xq4uR6VMeXcrQDM
         DQXzePGrDPyWfk1VJamin5JWcHVJFdLNeOn6B+rEFb1J8KP/HiucD8IctrVn2DX+L3XT
         O7QPbGnbpTgE7wfGQnl1ysfdiDgvk+WxOsQH/t2quYqiCqZMINNqhSL3aSkTiZoB5Xvp
         yokHLbPmWO49WO/CbKGzJ0z0pw7gejKi1yPUFTbakYtmvFKOho8Fg7O6pVrHCdkh82wd
         HFLYgr6hT+sYr0pikwFISU2uw4a1VsNCabBdad0RvqVUPUq9/TczRc+L3rOZYMc6fUhm
         zPYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=QMq6q8AejVL0OA6+qAcNxGykUNYasL09eN0stCNgi7o=;
        b=B7CzCXVCa+DQtrW5w0XldQ1qZqvz0AEvQlHS4fRzamMehJp7N8MSctTNyV1VKjgX+T
         QaioPe8d5thoidjZpMpL0qJB7l8bXP13R6gAZPUTvCg2PBVl7wQiglWadKECy5wyRvfS
         VcRhonE3QWHv4IvVKH0Dg6VJQ/THyDFQdL7FqoW06VBnpS58M5gsUXHnyLywyc8EI7mx
         VmLPkv6dPC6OQNuaQKNotSfrvR7/pGQfjgAkxEm9lU5QOedfdRNbOttYxVdoBACu29aa
         9hpEdRyW7cJ6HJtbfe8wtvPy13zPdKLBuStryecRCo4VLUdwwJUDBDIe80WBJZyQWRvm
         Zgwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UnqjyNAN;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id f79si681689pff.4.2019.02.20.23.32.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Feb 2019 23:32:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UnqjyNAN;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id p19so2503141plo.2
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Feb 2019 23:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QMq6q8AejVL0OA6+qAcNxGykUNYasL09eN0stCNgi7o=;
        b=UnqjyNANXInvrNfv5C/+R8ae2Iaw6cQybU3fG4aP/GFA7bbedKJXQuypjOPanCPBPF
         Y/VcgTqYFUu5jgMrCxanQbFvwxD4CeloPTmM5LjHXXLMLf12EJfdrVLNpQ+U0d//M/um
         m+beERXRMB7z9L85/y0J7fV34rrFlm4haDo9LaUjhxvOTc1X06KN8IjYHqUXuRzALSve
         6TNDj0FdmkDrCHHYko73SikLWDh+CfnGPY3tco7/gDBdTXbglg0SnB9MJDdmrE1kmJGo
         XCtxwR+YcyJxIjJYFyxP1ZxcjT+4sxNwXAMZLckg0KhZujIKyPhOjt9tYlpjXaynMUB9
         afrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QMq6q8AejVL0OA6+qAcNxGykUNYasL09eN0stCNgi7o=;
        b=T1vwWVfd2jP39bILuMhasQFjHS/lmvZtwcgLGXGfwjEYCJtuNkFlZzTCMNxjrT0DK/
         VwfD3ZZnt8mD4ce508GkIPMLP0NaRMDL305SOMrxvS482q9TgcDQeNdcdRCDwx7K488X
         adyrRKzl585Q/vIUO/kwoWlGs+fRWJQgavCRTTnodFL+1xmV4WSGs+GUFzQjx6uY+Hnj
         yzubF1gBV7VpYM3cJmWI2QIFxNWDC9+Frt8g6AHaGwNhCCZ6AqO36Rl7OHY45t+5q25D
         WpwSwSXEXkDG4eR+374yqXQ2xSQzPWNznfcGeLE6s3wqCxied+zue3dJ1O7CM6qS7xat
         jUQg==
X-Gm-Message-State: AHQUAuabg+QoHX9utUkq4KL7EQdbpCh2cKFJv7mTqHAJ+27lbOuJE3W0
	N6+D88M8x0R2s8LpyhdbhG0=
X-Received: by 2002:a17:902:2e81:: with SMTP id r1mr8093055plb.296.1550734354319;
        Wed, 20 Feb 2019 23:32:34 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id u2sm26255411pfh.134.2019.02.20.23.32.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Feb 2019 23:32:33 -0800 (PST)
Date: Thu, 21 Feb 2019 13:02:30 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/2] Remove Checkpatch issues
Message-ID: <20190221073230.GA26989@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This series cleans the following checkpatch.pl issues:

WARNING: Missing or malformed SPDX-License-Identifier tag in line 1
CHECK: Avoid using bool structure members because of possible alignment issues

v2:
[PATCH 1/2]	- Contact information is retained and only licence text
		is removed.
[PATCH 2/2]     - u8 enabled:1 bit field is moved to end of the
		structure
                - commit log modified

Bhanusree Pola (2):
  Staging: rtl8192e: Replace license text with SPDX identifier
  Staging: rtl8192e: Avoid using bool structure members

 drivers/staging/rtl8192e/dot11d.h | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

-- 
2.17.1


