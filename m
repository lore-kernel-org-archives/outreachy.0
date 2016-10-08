X-GM-THRID: 6339007016870084608
X-Received: by 10.36.204.68 with SMTP id x65mr775396itf.3.1475920007005;
        Sat, 08 Oct 2016 02:46:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.212 with SMTP id f78ls6572099otf.43.gmail; Sat, 08 Oct
 2016 02:46:46 -0700 (PDT)
X-Received: by 10.237.36.41 with SMTP id r38mr3758160qtc.48.1475920006613;
        Sat, 08 Oct 2016 02:46:46 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si6583207par.0.2016.10.08.02.46.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 02:46:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 190so4198601pfv.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 02:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OWUPFdh15i2wQSVxFbeTu+MWgVmo5IeVe8Eqt0GLQYY=;
        b=XrEqbqcZ5yh6pkwcLXZ0R1gnjvLjoZBo2t8cey2A5IrkkEHIbuDkLrY0c4MNE0AdBx
         NQS24aK5jHehI9LTsxkn8JbLuFAsZ4+Sd37TiWQVLUxTJaPcUniH5XsQ5Wt4B5ZeYVwS
         ZYcbe/+B2710AYdx9T1dnd7lAYE1FCisC4pZb/1lnBgUNGNN7nAbofu8EtQGN6Glce4w
         hKLmIg5jgNiD+NVBpN7K84sX/jGdjXGC6NoQOmmXoCFZTqM275n7MJzo3kBt3uzS749K
         3XaH/mMYFT5ciLcdZ+P4OPcaREA4wxieOqpkWxYF27PmwD6cOKZrGndqlx/GpvS0xLPv
         5u4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OWUPFdh15i2wQSVxFbeTu+MWgVmo5IeVe8Eqt0GLQYY=;
        b=CAn7hfvknH2PqyAJIH3awgqq9r27+zgYMgJXzkR8Ga5p/nw8yr52BpYynTdJqrqukT
         bQmo2vsVmkN7GmO2sMtpPLGl6O2DqAFRzyXK8mZ+e5P8+DfaDoWRbUpfZQ03jMuy9m7O
         T1kOjNYyX1sN2OnUHR4GqP7nql4nr3jRyoxM/N0dj/NSbNRzzjTHIJTZgQv6+z9I1iUw
         loIyVZxmqRJ2QVzwPkcAeq2wRS/Ie2GvUruGs38arry+XU11RQWcFRfoeWV6nJoHNS/x
         y4x1rmccjgLYAFsNlTwOTRA2X1LCukIrproSPnV5B2jFnOfeZV30mmUNajvSMLjxs6Ir
         3xFQ==
X-Gm-Message-State: AA6/9Rm9T64AHUMFcA0NsfVskd0wZYHZF0Yub9a293wRRMnah7z7TVOmVe3VbxjOKfYBYA==
X-Received: by 10.98.16.81 with SMTP id y78mr35318845pfi.33.1475920006404;
        Sat, 08 Oct 2016 02:46:46 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id y1sm19972966pfi.46.2016.10.08.02.46.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 02:46:46 -0700 (PDT)
Date: Sat, 8 Oct 2016 06:46:43 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 02/13] staging: wlan-ng: fixed lines over 80 characters
Message-ID: <20161008094642.GA12467@spock>
References: <cover.1475919731.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475919731.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Breaks lines over 80 characters that were causing checkpatch issues.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 92a7bc5..fd662ff 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -104,7 +104,8 @@ static void prism2sta_reset(struct wlandevice *wlandev);
 static int prism2sta_txframe(struct wlandevice *wlandev, struct sk_buff *skb,
 			     union p80211_hdr *p80211_hdr,
 			     struct p80211_metawep *p80211_wep);
-static int prism2sta_mlmerequest(struct wlandevice *wlandev, struct p80211msg *msg);
+static int prism2sta_mlmerequest(struct wlandevice *wlandev,
+				 struct p80211msg *msg);
 static int prism2sta_getcardinfo(struct wlandevice *wlandev);
 static int prism2sta_globalsetup(struct wlandevice *wlandev);
 static int prism2sta_setmulticast(struct wlandevice *wlandev,
@@ -278,7 +279,8 @@ static int prism2sta_txframe(struct wlandevice *wlandev, struct sk_buff *skb,
  * Call context:
  *	process thread
  */
-static int prism2sta_mlmerequest(struct wlandevice *wlandev, struct p80211msg *msg)
+static int prism2sta_mlmerequest(struct wlandevice *wlandev,
+				 struct p80211msg *msg)
 {
 	struct hfa384x *hw = wlandev->priv;
 
@@ -1099,7 +1101,8 @@ static void prism2sta_inf_hostscanresults(struct wlandevice *wlandev,
 
 	kfree(hw->scanresults);
 
-	hw->scanresults = kmemdup(inf, sizeof(struct hfa384x_InfFrame), GFP_ATOMIC);
+	hw->scanresults = kmemdup(inf, sizeof(struct hfa384x_InfFrame),
+				  GFP_ATOMIC);
 
 	if (nbss == 0)
 		nbss = -1;
-- 
2.10.0


