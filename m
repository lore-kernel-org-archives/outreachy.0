X-GM-THRID: 6477808984307793920
X-Received: by 10.157.80.41 with SMTP id a41mr7071123oth.89.1508232435453;
        Tue, 17 Oct 2017 02:27:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.19 with SMTP id p19ls200408ota.8.gmail; Tue, 17 Oct
 2017 02:27:14 -0700 (PDT)
X-Received: by 10.157.83.138 with SMTP id w10mr6859886otg.29.1508232434709;
        Tue, 17 Oct 2017 02:27:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508232434; cv=none;
        d=google.com; s=arc-20160816;
        b=AIN4ibTW9IrCu0BG4aV0qF32KBIh51tYZ0Hrid42tJanKKmJol70ey3zovSvPCTOEz
         G6WH8s1VxcHJcwpGsj57M1bjoiQ+n7A3Y9yxswOOLR19IhEzykp96P+rFlKKM7uYKtz2
         yxWxGbRuI/qhT4zWsPJSpMb2QiKIfcSR0z95VglwtbrOhHA5yiVRemISfTolpeUVMlFF
         /HaR/aR0p1D0Jg++IkOfqll1n4Di7RuWCXkBwj3c7NW5HMaJkHe2M6HQdc5XCUyXQlc0
         sE1x9pHk+Mt7EhgR+1VTOZoGkro48KUaWNAU/c5RXVlHSii9csMn7wy3MLBXmsoPGv1W
         UKRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=rF8N6QZUvjaIgytqWMOn8Rrfa043JB5C0QjK60jsTms=;
        b=q8QgZQlcbKktGdjIfGXMacbfrb9kT3nEV3iqJAQ5xQFogJSlAdQHpESwVpUkgYayYg
         6xiOsPDeU3lDwB1XdoVPm5q0JXmzhpYjsdAJ/Tnp+c9/sKdoffkGedMjV/aBD9slEvdh
         0tmL3ggtuQqpKGmnao6+r44U1EdIN75b/RhaTfSlFsN7Q0n06WYbksJ3lvOs3k5QnnGr
         AQjlIgUcMNrHl/U9UAIUkmlKd7meSn4q8NfKYpVvnlHNC/BIsMWizNE7eX0MkCZbddvb
         jwVPAwLnSce5+LzQHFHQh/BsEOwnx0RiiNEb7aFCIoSWeSrmLslGCN7FDIsaIcpZnbZ1
         ZnkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qUMNlc8Z;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id t9si541349ote.1.2017.10.17.02.27.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 02:27:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qUMNlc8Z;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id d28so936416pfe.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 02:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=rF8N6QZUvjaIgytqWMOn8Rrfa043JB5C0QjK60jsTms=;
        b=qUMNlc8Za+2IctCsPoJnoFpI4FgT+EYZ2Lzw+xeNKxNdfC2yls/W4eaIcYXjNWSafA
         wOLjNbh9LOnJPZ1qyTaRqqEZGzKRBIz/Xjv9N8dNpzMjRcko9GwXGisp1gD4U+f6825w
         Q0YlvGtLmMygmqNTID1vgIZdt/aIb+voLjR78gx45pZOuydbXfAAjbqgP7DkUwbS0Azg
         n26vM+3TXpQfk7RiL4XAS+zQFBrZf15WOjjOL/9a/R4AgsiMcqL+w5IiZz+YycyH8og1
         J6ZJrIwGyLZfBohVhpqSpAqJS0LJ6KrwU4NYnaOST0Uq//Afxh8M6m0CdO3NYJLejjm+
         C4cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=rF8N6QZUvjaIgytqWMOn8Rrfa043JB5C0QjK60jsTms=;
        b=SoPePHcsEeC5AXzYfDsNCPFCm0Cd9UcmmR6oTu0U1fzSzULbvLwx8wELQbR99hbmks
         DxzumUJMJ54lgRG5TdWIUYm1Eh33daf7LAusthNuln3S2DMWb13zZLpZ0ysyOM+um27Q
         s7EmG2CJ9gux32q3Q5M6k6fUO+91Aawww71CH4zT9kU1Kufz9Bt0pOx7lUWAg4/CxRCY
         YJ26ikxWKFk6VlbU0xk8cJA3/Troe4uJg8OwxeDJSnB/2m2moU3879l1fPENZRNq/G3l
         eMdIJqFJxsZfBInBLgtwZWwEQiLxUfaozSQYLdSD8cwHNtpyoZ3T6VBWnpnzRZJIw0Xf
         Y8wg==
X-Gm-Message-State: AMCzsaWbtgAkg+U7JlceR0qXff9bK3GYiokAhPrJJG1fbGGCde+XnjBD
	XbN5s4DqM6UN9K4B+XQZXUAPe15e
X-Google-Smtp-Source: AOwi7QAGu34DsrTQT0h1/j8nkqdWIQR0s2zpkJDgGhTQMw6SHTmNZ+7zZGQgU2KVL/8PrqHSQQYOxw==
X-Received: by 10.84.217.206 with SMTP id d14mr11438394plj.62.1508232434139;
        Tue, 17 Oct 2017 02:27:14 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id g24sm19435519pfk.0.2017.10.17.02.27.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 02:27:13 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v2] tests: xlate: print tests passed and error for testfile argument
Date: Tue, 17 Oct 2017 14:54:58 +0530
Message-Id: <20171017092458.18672-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Print tests passed with errors and warnings when run with only specified
test file.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Changes in v2:
 -Change subject
 -print the errors if no argument is passed

 xlate-test.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/xlate-test.py b/xlate-test.py
index 43c4be19..0a582af1 100755
--- a/xlate-test.py
+++ b/xlate-test.py
@@ -51,7 +51,7 @@ def run_test(name, payload):
                     result.append(magenta("exp: ") + expected)
                     result.append(magenta("res: ") + translation + "\n")
                     test_passed = False
-                elif args.all:
+                elif args.all or args.test:
                     result.append(green("Ok"))
                     result.append(magenta("src: ") + line.rstrip(" \n"))
                     result.append(magenta("res: ") + translation + "\n")
@@ -60,7 +60,7 @@ def run_test(name, payload):
                 result.append(red("Error: ") + "iptables-translate failure")
                 result.append(error.decode("utf-8"))
 
-    if not test_passed or args.all:
+    if not test_passed or args.all or args.test:
         print("\n".join(result))
 
 
-- 
2.11.0


