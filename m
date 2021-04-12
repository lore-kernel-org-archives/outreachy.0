X-GM-THRID: 6950332332596264960
X-Received: by 2002:a1c:6a06:: with SMTP id f6mr274853wmc.179.1618250350247;
        Mon, 12 Apr 2021 10:59:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:9a6:: with SMTP id w38ls90827wmp.2.gmail; Mon, 12
 Apr 2021 10:59:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwUEHhLM4cc2jYEAomNOK2Nw22Wq9L20yqMyRaRk28qKQCONEufPbIZPctDddvPvxG5QECZ
X-Received: by 2002:a1c:6489:: with SMTP id y131mr340395wmb.0.1618250348965;
        Mon, 12 Apr 2021 10:59:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618250348; cv=none;
        d=google.com; s=arc-20160816;
        b=xXldrHhF9yyeuofCPtx/IhnGEwku/TxTMOvGBAMpSJbMyOgMYbSfsCDaAVoA1BvIm7
         iG9EnI/K0MyExDAyZIZ5UPIk7wVPqKtV4ZW4PMOLAnWGBaQB+M8XDvPDY09qyRwIwPM9
         9orwFMLqGjxFidLBcAnOGWj51oelCpgxl/H+OljvK7mkY06Y7JORfCZ3N/TXnN6vqXx6
         AFbJ306DFcLQN3ncDG97qZGjLxR/BghZAtONNAivd9wbPGJ5jxamJaUpxTbhy83Y9j7B
         ENRJ1Fv3iqp4mDFoozRzfUMMiqsdKdJHuAfF0xsW9oEu1Bm5mGfvlrah36H4rqb/Ghux
         7QCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=H/wwcGG3rNXNsZQgkGk7QbLfEu6ULkdlrYbUXwHoD98=;
        b=w57Lb3PCLGwCBml6yjmrfgYKDdgsfQbf5sBnzz88qj9oGTQlMeelb6lIxW8unuSBt4
         ui7a1kPrGl7wRDQvWkWLbceNawXp6A+RIdxpo+a4VlPnPZlaITIC37baffmREUCEDlHp
         CQZTprtSC1OEUdNduBc47eBd0rrvw6PhnVLaDOwYs/O/P6+zfncGsSM2qDjVY1UvUGbX
         qbATUep6D/ovriRgnfV8W+lPc/t8PyTaWe+rFSgw8WKtQwXYWpMaNNBkzqbM9WE5vDQs
         SrvJmFKSE0qnXgaU5U6QDIxrubMAo0PvjKOua++Ifokly5iI54uxbfEGVpcaUNr8/D1C
         ex5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kHnoF8nN;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id t124si21780wmb.3.2021.04.12.10.59.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 10:59:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kHnoF8nN;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x531.google.com with SMTP id w18so16208628edc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 10:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=H/wwcGG3rNXNsZQgkGk7QbLfEu6ULkdlrYbUXwHoD98=;
        b=kHnoF8nNrf8iq5HdVKMzM6b8YJRKVAxeWL8MlhUNzfwMdNjyfM7Y3PIDrGZCFh5n6V
         DZbSRNWF0jfw3Zoa9SsLWtYsTMI8m5/eP0usAF7P7Edv6LRPahDNLgTdVfZhPqg7DKOo
         adNPHS1OvMS5ShLem6OUVzK7BVf8soeRc6HXeekSJEbPTA0Mn82Huo92OyCaOuF9+kTM
         oHeqt0CUmj19qdQMvrqY8K8cA2kInXmE1nyZo8uPpcby9ebsLzgrGpxLuViHra7/MtSv
         dOgMVlomqvf14hrxLqYc9jJIQHx3MUcmQH7xU9X6xKdZILuAfNrD/4ya964yV+piI2YZ
         vZKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=H/wwcGG3rNXNsZQgkGk7QbLfEu6ULkdlrYbUXwHoD98=;
        b=Dc4tEPlW5+E2sq6Obdy4fHVfoa5vZ+x15xqCXCgE0YPD6mOvOUQDfb3foCpmJecTWn
         KIrjt9l4Kpmgho99V0HtCW5UrlaiwmO4cNq/Ptq496OXKH1nqL82KrGfuifzEb0MRL5q
         ktw28ZaWzlAhmxemK/vy9ZuRSJzuwc/HWxjt52Ck2TmiYgkV9O38yutSc0rvn11rSF4S
         lcJjDFr7yhcPnYdO1TLozkqctJgKQ0G1Gum+e4Ng5/69q0d1s9w7P6RPZhul36p4K3ti
         UjL6YfaOC2hebeajPE/ZeT5z2WUmyanT3iXiz7/EyFOVvWnwgOr6AVZhucjTq/k4hxnE
         E9/w==
X-Gm-Message-State: AOAM5319U6cZuOnGwau2jJO+Lki7G3gxDm+lPgM11iAVT9mV8c50w3uP
	FMbZgp/DweyT0bhmbtYQXJ5oqcWRLCnF1fhY
X-Received: by 2002:a05:6402:2054:: with SMTP id bc20mr17256693edb.334.1618250348558;
        Mon, 12 Apr 2021 10:59:08 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id gz20sm6300534ejc.25.2021.04.12.10.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 10:59:08 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH 0/2] Remove spaces and blank lines  
Date: Mon, 12 Apr 2021 19:59:01 +0200
Message-Id: <20210412175903.17819-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed spaces before tabs and multiple blank lines from Hal8723BReg.h
for readability improvement. Issues detected by checkpatch.pl.

Fabio M. De Francesco (2):
  staging: rtl8723bs: hal Remove spaces before tabs
  staging: rtl8723bs: hal: Remove multiple blank lines

 drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 43 +++++++++------------
 1 file changed, 18 insertions(+), 25 deletions(-)

-- 
2.31.1


