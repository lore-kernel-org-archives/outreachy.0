X-GM-THRID: 6951097380954439680
X-Received: by 2002:a05:6000:1249:: with SMTP id j9mr14770030wrx.416.1618428477410;
        Wed, 14 Apr 2021 12:27:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:24d4:: with SMTP id k203ls1645580wmk.0.canary-gmail;
 Wed, 14 Apr 2021 12:27:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxxl3eQBxyJNVXG1AOZLSYvEKkNDHdloHQSZnjfcOg7ZwK9FQU1ksP9gmGxxwwlbH5XhIE3
X-Received: by 2002:a1c:5fd7:: with SMTP id t206mr2904965wmb.71.1618428476019;
        Wed, 14 Apr 2021 12:27:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618428476; cv=none;
        d=google.com; s=arc-20160816;
        b=vM4e2PriLu0+EdtPXr/TXDgBNduzlY/wJ4yjKA36oIdgWDai/NI3BzfL6z+uEzemng
         vWZOosutbJVyeu78s8YKKunu++yZSZQERoapGRuaFbWckW0+4kp6/oKIqVPCZOz1NDrM
         67sxvoYGFqJj4H4sTVJ5Hv/POHkUG4lnfYCzYAOfRV+h+5Tk13KQaAOpr7Gg44Wr7G3q
         ZCFWuIaTfNjkVgTcicJ52cxDoIpBxk5GOrxulqAbSWlOVSdOLzC3FIAhYRf2DJWNwXWc
         FxFLdH0vwC2mIexKd9aZ3//P8jBbl+J1BAXVOsRiKBcar66M4wAjeWtNkYhit4HrPenW
         OXOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=l3Dfg+t81O6iIBFRL3yKUv5Drx9glzGHFqa+e6m1HgM=;
        b=1CuN4atd9163wnbFMlkvmxflnA9XbW5hmBqxrTjXagShAAF9x/VL9Uc6hgL3nB6Q0P
         FYyOOhXESb12KzQuPd7KNsHuqcvtD2caUOjJuumkvQq0bclpKQtjkC5lIXk94Z1KSBmF
         fZL1rUwlZcFSFVPgBg1Nw7jVRI9lSLsK2Q5IHjJT1YDarS+NqfqaVQMAzT+lsHk6+Ip5
         h3JTfANB5n3sXFgh9FQlJ//RSMZuuhOsY2XysNVVPktbp1eUditH/DfPAurpC2JaM/QZ
         pJc3n2r+7LQ9d6L8tMc8uIaT61bMgpY+vpe/V/yxgz3l99FFgqCFSr+umYlDL9dMU00N
         Ma3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TymgCV05;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id s141si112647wme.2.2021.04.14.12.27.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 12:27:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TymgCV05;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62b.google.com with SMTP id w3so33171237ejc.4
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 12:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l3Dfg+t81O6iIBFRL3yKUv5Drx9glzGHFqa+e6m1HgM=;
        b=TymgCV05iTqKAdGAjC97+N/q4GoSVXD9mWjK5skpZ9Ge6BbpWqu2DXzQW9WE6/8cjq
         wU2UPbCkn5qKzQWpjLVCWSPqASNcrfE8z6DabgcvTz8bLUZkLgv5HrG+RMHig5A3LPOw
         QOqnHyEB7S+QA63x/mmarxWpDRn+Vtwe+2wsB7M+r83OMnlB9fjDY3sYagbJNJP1En9t
         NwAw9KNdeum0QixGZL1ah3EVdG1KryTeoGyldKiSW+httLClEAsk/9Dcqm9mWxhvL49D
         j3yNpJ/PCY2j5sSG4r5b0bNzTan7LIAqce3iKOa51qSEstbeX34x4I1hMM75gLGgOIFe
         YTCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l3Dfg+t81O6iIBFRL3yKUv5Drx9glzGHFqa+e6m1HgM=;
        b=S+OLqiqWE4qEDHXoIky4s2pkOA3Iw39SRt1RW+EV9eASvj6bW0oQqxv5g7j0gNRiRV
         db3JBDNDACqnMMwciFLaFNdfXUEi0Ntzo4d0JcmVfQofj8KaMxZ/dUefp/SHQMVtRMrq
         goGZJfq4krm1XtkhZrKwHzjedgu6mfotDvrbIl7hRHS/eZqrKOadyMCWQuhdqibYlJ1b
         lZzs3mLapLGKWdk9KSJ/2mbhPnLug+damocCK2qZ6YDTVkEhyWhDJotSGD4xLkDolzG3
         FeWQMrcGN8pnV8v4+w86QGvRynJb8eVR3xw9fERAA/Uhqux8LmwIyuwv8KPWhK9BPlrt
         Kcsw==
X-Gm-Message-State: AOAM533Q1L+LgNtNzfxyzT4sCr3YgosPOLY+AOiG6NtMl64vKElcQORI
	ai8QYHPai8lQcvGuhT+OfF1HhbnQJ1saFS4+
X-Received: by 2002:a17:906:6d01:: with SMTP id m1mr421426ejr.501.1618428475504;
        Wed, 14 Apr 2021 12:27:55 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id gn3sm259049ejc.2.2021.04.14.12.27.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 12:27:55 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Matthew Wilcox <willy@infradead.org>,
	Julia Lawall <julia.lawall@inria.fr>,
	Fabio Aiuto <fabioaiuto83@gmail.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 0/2] Remove led_blink_hdl and other related symbols
Date: Wed, 14 Apr 2021 21:27:48 +0200
Message-Id: <20210414192750.4974-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed useless led_blink_hdl() prototype and definition.
Removed struct LedBlink_param. Removed LedBlink entries in
rtw_cmd_callback[] and in wlancmds[]. Everything related to LedBlink is
not anymore needed. Removed extra blank lines in the two mentioned
arrays and changend the numbers set in comments for having them in line
with the shift. 

Fabio M. De Francesco (2):
  staging: rtl8723bs: Remove useless led_blink_hdl()
  staging: rtl8723bs: Remove everything related with LedBlink

 drivers/staging/rtl8723bs/core/rtw_cmd.c      | 27 +++++--------------
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  9 -------
 drivers/staging/rtl8723bs/include/rtw_cmd.h   | 14 +++-------
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  1 -
 4 files changed, 11 insertions(+), 40 deletions(-)

-- 
2.31.1


