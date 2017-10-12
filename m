X-GM-THRID: 6475500386308325376
X-Received: by 10.99.96.5 with SMTP id u5mr15140pgb.24.1507775157381;
        Wed, 11 Oct 2017 19:25:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.78.4 with SMTP id r4ls714868pgt.9.gmail; Wed, 11 Oct 2017
 19:25:56 -0700 (PDT)
X-Received: by 10.98.234.15 with SMTP id t15mr284397pfh.11.1507775156295;
        Wed, 11 Oct 2017 19:25:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507775156; cv=none;
        d=google.com; s=arc-20160816;
        b=X7XflASdJyj1PWRh/Rghfmr/rofLlIE3IdfIuhrKha7UlNaRR/kMytRwVMa/zDkRiU
         IbekwNnRi7JTA+6HykEgN6AF/wxuPjltEJWA6+VnudO36QggqRfRwrupBFRKw3rlQJz6
         hwbHGEwcWxA21FePc+7ziFGpDdUzERSxcEkDo9MBXt1Edc6IKdYYIscy7y8pRBRUViJ5
         F+r2WrP/8j/0NxMQAsAWP4YBiuEb0EuHoNgNDqYgD05np3t3aP8SRF4ZcanI92htucH9
         4eP+9K9KwED5w5IeJxWKtY5cU+MYgPtTU2n4LCUTrdpCnV5elewg8bmYuzBmJGgTBhSZ
         Pojw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=ibdNZusgvBxzo2pXKBLhy/16hVd6NAxhjMbsHf4wY58=;
        b=J4DLF5raLlPpoD92z26YkNjdHZToM19l06A+jiIOsys9aEyW7CqZMcOa3q28KSSV0/
         eXvw8YJZIxdZpnU1c40Xd0XdItYohrig8/2qFjLMgh3o6WiTrS6Ar5zzJ6MvGFsZJbkn
         C6OG7YSdSVjJZmbqnBngusmOmUebKQDMdXKb4Cq9FGhTQzbL0uHk5zqjT8b4hjC30bQF
         OUOkGM/6y0N045ykWKiwuZ8r4Q8m/LyIQPgcGSvszz/HfOEshMs5Yklk9IH/bEmaaQTg
         f8TFJ2uRqRASvKh+f0roCcPq7NjFfww5XZjvP8ercDM/3gKBLzlFgXsWBFVqHUlrj0G5
         bGuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Av204I1l;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id z123si31218pgz.5.2017.10.11.19.25.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 19:25:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Av204I1l;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id h28so4025831pfh.5
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 19:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ibdNZusgvBxzo2pXKBLhy/16hVd6NAxhjMbsHf4wY58=;
        b=Av204I1ltOnfa+ZEpTcXPQ8hply6CM5GazDu74aemVwny/yFY9zijLa6iADjeGI0sd
         ZhHNdYqrsNQUo8vaO0vEzN4pISyIiKbqQ5/wFLro6MD2JG3cPxv9nEPLb4XtVO2fsmXR
         /oeGzBnV0ayEUWIw0OLmhynbPEbCbcEBZsAriQ6vlCoZCTxh8SDzk1/WCrqmvpfEKP3A
         1ehwph5Dv5jx4wSTl/rpcX9rL4VW1eyM9KS9wARz4C4aMOkM97B/8z8BgLm6pW2S7Tcx
         NMlpZAfBHmZIimcWe65cWUNBVTTedDU5XaUx5jP+J/LnVr2QGWJ6ZBiHMj0j+uBgIgLl
         qHIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ibdNZusgvBxzo2pXKBLhy/16hVd6NAxhjMbsHf4wY58=;
        b=c5bIxtKNOrOJzwQULD7prYPY7oNuzUkzFFGsiufSo2faFta1KxbUNgCdhsMOz9MH9h
         TSkBXCiCkLo0I1sI9TBt0QHdsgbP2bWY5rxZwTCUX9rhL+WD6Oq3gZ/d8UlFyj6diA/j
         yZr5QReK2UwRXWuCl+6277s2ExDkp1D5dfQ3kiKPRffLGXYydGkNYeE5VP/cYfonjfEG
         Mr30YFZlZFhTJS6t82fsvLSYKcCIpvT4EC4yRwBmt5y7gzkGNfh7FOfp+3ht6EAsLVQ7
         ICe7oXMpruOzFLsTHLZ/jKdcFGVNs+vNWUtVaY5T0ifQA/boZogwW2pSH3IvAIlFiVaz
         OrIQ==
X-Gm-Message-State: AMCzsaVm1dkoWXIAZqQTgnGzHN4PjCutxrBsukfyhdvSNpOLyyD9wqVx
	Ely01eTr/lIProasJ5KD+VA=
X-Google-Smtp-Source: AOwi7QDZSqi1I1b1rKsdO88egJxbMjf4bnR/WI1eQfyVCHk450cz/n7Ew0WS01ED20jqBOH3iECh+A==
X-Received: by 10.159.211.7 with SMTP id bc7mr826362plb.425.1507775156071;
        Wed, 11 Oct 2017 19:25:56 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id 133sm26508042pfy.2.2017.10.11.19.25.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 19:25:55 -0700 (PDT)
Date: Wed, 11 Oct 2017 20:25:53 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH v2 0/3] drm: Move debug macros out of drmP.h
Message-ID: <cover.1507773977.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset move debug macros from drmP.h into debug.h and move
printting related functions from drm_drv.[hc] to drm_debug.[hc].
In addition, it fixes old comment style and add kerneldoc comments
for exported functions to avoid kerneldoc warning.

Changes in v2:
- Place kerneldoc include directives in drm-internals.rst
- Fix kerneldoc comments in drm_debug.h
- include patch 3 to add kerneldoc comments to exported functions 

Haneen Mohammed (3):
  drm: Extract drm_debug.[hc]
  drm: Update old comment style
  drm/debug: Add missing kerneldoc comments to exported functions

 Documentation/gpu/drm-internals.rst |   8 ++
 drivers/gpu/drm/Makefile            |   2 +-
 drivers/gpu/drm/drm_debug.c         |  92 ++++++++++++++++++
 drivers/gpu/drm/drm_drv.c           |  47 ---------
 include/drm/drmP.h                  | 149 +----------------------------
 include/drm/drm_debug.h             | 185 ++++++++++++++++++++++++++++++++++++
 include/drm/drm_drv.h               |   7 --
 7 files changed, 287 insertions(+), 203 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_debug.c
 create mode 100644 include/drm/drm_debug.h

-- 
2.7.4


