X-GM-THRID: 6403004271332163584
X-Received: by 10.157.23.26 with SMTP id i26mr753443ota.11.1490815605339;
        Wed, 29 Mar 2017 12:26:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.13 with SMTP id y13ls5748832iod.17.gmail; Wed, 29 Mar
 2017 12:26:44 -0700 (PDT)
X-Received: by 10.99.155.1 with SMTP id r1mr782501pgd.71.1490815604510;
        Wed, 29 Mar 2017 12:26:44 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si1307955pfz.1.2017.03.29.12.26.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 12:26:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id o123so4135655pga.1
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 12:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=fkf71S22zktW+LL3bsftqUFS2Hec0ss7UMMZMU85FJc=;
        b=BR+YMXoJOTkJfIlWarr/Ey/BQ9ItsItZ01gZeGU5zUKaq3PRxzdEBq/tp57KWnG54a
         aT4osa7n+WX5chL4p/P9AqrbIFW5YZXZhMgEgjIAswGN6sDr29QqGhOnoebHh886GZi5
         gjeBtC1jSYYXzLbZRjiAK5+8s2b5MrOMy+wdt7M3VAOdKK1oMT3alzcUoyZ/hLjpqwlZ
         IyzO8Dy/mkY4zx9+B61lIZoxE2cPl7JY9IgQso+d14EysA3Hxe1NeWLMKSJS7iuGpewB
         SyEPxYuBVjppVvJ61P/2IEb5p0paMu1p1NCSpzG/msXFxxGXDskc6JW+Z8Gpovnd76te
         V+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=fkf71S22zktW+LL3bsftqUFS2Hec0ss7UMMZMU85FJc=;
        b=cZYHbHz8U8DtN1k+SmIWQ50KxuSdVcYM4IGzdJAoAeL0taPzfmDf+5T+kpZpAftpeH
         9/PDqjA5Yhz5Q17kf5sRtvEJIODhy3fXuKwOtQZMvKewlJ8hOw95Jrl0cJoOV638O5Op
         6gOPzcroSeGBEelKyW7RBv19i/21appqNo8MJpyu0Z+rfOHVGmuVXrqI++KRE1d1TkfY
         5G6xHev0D+3Hd9QZvb1IitXOk6q0xbjRje/Mm9Kf9zmmbBiWl76DxOfBo1ovxBECEqz6
         VFGCFyhfk187BgRDvmQUUl6coH5Mwi+zeMHQeGIOf/j+Jc8SyB/75z7LRLI3s+Rl1XL6
         vLsg==
X-Gm-Message-State: AFeK/H07DyARuKmkeDirRhbaXo2pHit6z+XKB81GPumb0uz3bWW7jbRcEOSRwSk0NsivVQ==
X-Received: by 10.99.37.199 with SMTP id l190mr2220699pgl.86.1490815604329;
        Wed, 29 Mar 2017 12:26:44 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.142.90])
        by smtp.gmail.com with ESMTPSA id l3sm15043574pgn.10.2017.03.29.12.26.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 12:26:43 -0700 (PDT)
Message-ID: <58dc0a73.437c630a.9094a.51f4@mx.google.com>
X-Google-Original-Message-ID: <20170329192637.GA20099@<rvarsha016@gmail.com>>
Date: Thu, 30 Mar 2017 00:56:38 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: netfilter-devel@vger.kernel.org, pablo@netfilter.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] iptables: Fix multiple checkpatch issues.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

This patchset fixes multiple checkpatch issues.

Varsha Rao (2):
  iptables: Remove explicit static variables initalization.
  iptables: Remove unnecessary braces.

 iptables/ip6tables-restore.c   |  2 +-
 iptables/ip6tables-save.c      |  2 +-
 iptables/iptables-restore.c    |  2 +-
 iptables/iptables-save.c       |  2 +-
 iptables/iptables-standalone.c |  3 +--
 iptables/iptables-xml.c        | 10 +++++-----
 iptables/iptables.c            |  3 +--
 iptables/xtables-arp.c         |  2 +-
 iptables/xtables-standalone.c  |  3 +--
 iptables/xtables-translate.c   |  6 ++----
 10 files changed, 15 insertions(+), 20 deletions(-)

-- 
2.9.3


