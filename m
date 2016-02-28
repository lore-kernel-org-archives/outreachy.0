X-GM-THRID: 6256340857508593664
X-Received: by 10.182.105.133 with SMTP id gm5mr8637606obb.41.1456667868927;
        Sun, 28 Feb 2016 05:57:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.7.101 with SMTP id i5ls284594iga.37.canary; Sun, 28 Feb
 2016 05:57:48 -0800 (PST)
X-Received: by 10.66.160.9 with SMTP id xg9mr8943871pab.38.1456667868668;
        Sun, 28 Feb 2016 05:57:48 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x231.google.com (mail-io0-x231.google.com. [2607:f8b0:4001:c06::231])
        by gmr-mx.google.com with ESMTPS id nt4si755254igb.2.2016.02.28.05.57.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:57:48 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::231 as permitted sender) client-ip=2607:f8b0:4001:c06::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::231 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x231.google.com with SMTP id l127so162819600iof.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:57:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=t0vsJcyI1feuig+A9disDpkNtLS7AViuDdNd2mcN3zY=;
        b=uQLZVhPFBBuaOzAxw1JMoXP+0wsagnkCjVdLvs3NK+FebXmwZMXKtTPrLEo9UJF91Q
         ea3FbfYIV9xLfNwLugs95X8Xr29b6jtZuQF5RI0DwyT0Ue0ADeojKFakDFRIcjU1lTWo
         WslYuij8vXtYaIXkF5DZsbS5oOzOTnPNSlc3gHYTBsAN7OSkYsqOlyGAJFUSmh24jcUY
         yzRtf4MbYlEHWLN9Hfsw/cnTyjN38yQRt61D9STiZDpEfZVPrDHqJCy9LA8MVYGUgRrA
         SyJDbOt0thJDfvROIXlW0PS0wvIsWB39mtlUOIAkbQyNViqcJ0+Tmfl7m/VXJwvZQ6+3
         VSTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=t0vsJcyI1feuig+A9disDpkNtLS7AViuDdNd2mcN3zY=;
        b=Ib0Tg5srTvmnzPg8fviW4735LQgFSlRfoWtrfVFqlGK2nwRkVIkKKC/mXpn+WbOfct
         kkr/e6Q/V1mTC5XXg9Cwwth1nahnvMgjasVub3rnat+auIdiF5voIh0x1RMVH8aMnyuj
         sf5e/FuKHVMIjbBmr35+IYWO6nQRc/wxmo7Bnw4xBeTCMRy0ELuwthIPzBvvfI12o4pX
         6HxazcKIQawJgKyYQbfIRLcDisftmOF+mEOmg+sQJ/iv6ZhsRVAJ7VBnEPnJ9H07l+bM
         g0XQMZbvzWdUrPy5xaFTL6TSrQw0y9ZGOMKoyHYjRvK6teKh9Isi9GLZeLUka8ybU4IS
         VwqQ==
X-Gm-Message-State: AG10YOTUcA6D1kKCAdEzFATs0gDLIT5Zk2FtfCTIrae3mH6pghbrm8nVdWLzGAamRz6GCw==
X-Received: by 10.107.198.14 with SMTP id w14mr15594046iof.83.1456667868489;
        Sun, 28 Feb 2016 05:57:48 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id j10sm5058528igx.15.2016.02.28.05.57.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:57:48 -0800 (PST)
Date: Sun, 28 Feb 2016 13:56:58 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: os_dep: Use list_entry() rather than
 container_of()
Message-ID: <20160228185658.GA5218@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_entry() rather than container_of() with linked list nodes.
Semantic patch used:

@a exists@
identifier var;
struct list_head *ptr;
@@

  var =
- container_of
+ list_entry
  (ptr, ...);

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/xmit_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
index 1593e28..d950c4f 100644
--- a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
@@ -178,7 +178,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
 
 	/* free sta asoc_queue */
 	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, asoc_list);
+		psta = list_entry(plist, struct sta_info, asoc_list);
 
 		plist = plist->next;
 
-- 
2.5.0


