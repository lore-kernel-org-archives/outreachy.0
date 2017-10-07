X-GM-THRID: 6474240568402640896
X-Received: by 10.84.172.67 with SMTP id m61mr267835plb.9.1507401598673;
        Sat, 07 Oct 2017 11:39:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.176.1 with SMTP id h1ls378875pgf.12.gmail; Sat, 07 Oct 2017
 11:39:50 -0700 (PDT)
X-Received: by 10.99.121.77 with SMTP id u74mr455422pgc.12.1507401590957;
        Sat, 07 Oct 2017 11:39:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507401590; cv=none;
        d=google.com; s=arc-20160816;
        b=uylfHvzwuXKpbofMJ0JXJgXXQFF3WcOF9K4/n9OKup0X67xFjZtpBtFKq3X6UiwREX
         887j2IdphY0/2U15i/o/rAtgw64gNedRSz9AjbW+ItTv42WQy2mYRXuQfg1RXSx6gaYH
         12ALJdVKz3/LQyf8Mp61yLTiQqV7X9TliJXKAIDuCr5bilucKnNL30KqTRYZM1swvdbn
         UQTeaGVXFeG9EnHxX7EzSSkfsISJmZqtvzUfb+DwD7omN2YRq2gK2FrdSVAHUW4GLoqS
         lszWM9tiYcP82Ws68gf49DxFSm8uoJaN4Wqll3qxPp1HJVU9UXePSHbA0XtLWaHxQ7Xc
         K1oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=PkcimiXqNOQHF6zO0RDUNeCuQHC2BepmCxe5xhx4XvM=;
        b=tl8MeSg3doHgtURfVH3UUAznGpbysPvXwDo5yKmqsXOfcx0XvT7t9oJ96AUZE6XsZu
         fMspIPJ/J8y+neamlnLk11JvZWT0sIcddyfrNhbhWGIFJ1rLbBkkleyO5eYm3kIVr0RZ
         FC68Bhm3VHNkXSdqVu87RsUJbVZ5KZOrzYkWeodnFNstkdwThOWPqvA4z/yyAEGGh2Lr
         cqCpD/fhet6e/0s7H1ox1QedRqC8NvoiFlSOWyk1ap++1hy2IyG4a7XGS8ZN2zamEPLA
         a9ECwPDnpYfkr+dvImVcMrQjVrdFCiYocg2e3l9KrogDzT31ryosElOCl4J6NejlCAOe
         KwpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dikvO3nv;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id a28si483160pfe.24.2017.10.07.11.39.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 11:39:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dikvO3nv;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id m28so19655796pfi.0
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 11:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=PkcimiXqNOQHF6zO0RDUNeCuQHC2BepmCxe5xhx4XvM=;
        b=dikvO3nvYhTwMulWSWKlwVzN4cpTQhptNdjWFBOSxRAPHjDSR2vWLU3FBZTRaw/a05
         v/RIxiZl+s4dNZCGz6dvtFIKl5+xrl5x20wdUGQcKS8IBoV+4mL2U1pyyhMg317dAfTP
         Ddcelw0+iTkHBsfYqg6HcQEOtX0Qzo4BxE7xtu+VZ4WKONCyRGyGjQ/2K2mbOnSi31bG
         hdV+HU3hvv0BX9EzyADkk9PkjIenM7NblYIxzrx/2WH0pWmUz3C0AfdPulf9FzrqHEYD
         Bfl+AbmL0ig4P0aSYfe8twFbSRZXH2nCXPoO41kWaEuoMTwlQkplMseeI7Uw0ilRuzdH
         1d+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=PkcimiXqNOQHF6zO0RDUNeCuQHC2BepmCxe5xhx4XvM=;
        b=PvrwXdnDld7ZX1zPA1USSMlNvYu2lapxIzCCV6M+SyFHPuzzttXCr/SQ6gf9dF287e
         MoPfeZ9LWYIAy5/AYGlukCzcAzUapj0jTL1MQR4A6bHHbI+snbnT5JW4/gbQ7EmezaU+
         GTvmisCsrfyJRD7eoL3OB55O++qMvnVU/RLWr/IYEr+1ccTo2EJ/Q21pSWgeHAsnZulE
         VT4hTR6P5einPxrSCEylxbI2UvX/ReybzLnoXb/c38Iz1NoCdHkiZmPVlFh31mkpLDbt
         3aqT0o1RonS0mqCUkGUe+/Dis5R20oc3bg+TUULuqk4GkGk4BEzdMalIlymnPFzRXZTA
         wN3A==
X-Gm-Message-State: AMCzsaUK3S1EtXIdn0CqMj9Y+V+YI6kublt9K/5+3g7iSkjp7cdZoy/Y
	HT8zzB0btvoT/TTTe0pUbMEe/EB9
X-Google-Smtp-Source: AOwi7QCyQS4GyAeDfe5iH2V96qadV+BH4+Cm85k9thRNxvYTzdiAOlv7BqSVXdu5WXiGnaEDY74KVQ==
X-Received: by 10.99.99.65 with SMTP id x62mr5296947pgb.221.1507401590556;
        Sat, 07 Oct 2017 11:39:50 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([45.127.232.78])
        by smtp.gmail.com with ESMTPSA id f10sm7776502pgr.67.2017.10.07.11.39.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 11:39:50 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: rtl8192u: ieee80211: Replace list_for_each with list_for_each_entry
Date: Sun,  8 Oct 2017 00:09:38 +0530
Message-Id: <1507401578-26613-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

list_for_each is a macro that iterates over the elements of a list.
list_entry is a function that takes as argument a list pointer and
returns the structure that is pointed to.
list_for_each_entry is a macro that iterates over the structures in the
list, rather than exposing the list spine.

Here the  list is only used for its entries,
and thus list_for_each_entry can be used instead of the
composition of list_for_each and list_entry.

This patch is with the help of following Coccinelle script:

@@
expression l, list;
type t1, t2;
identifier p, v;
iterator name list_for_each_entry, list_for_each;
@@

- t1 *p;
...
- list_for_each(p, l)
+ list_for_each_entry(v, l, list)
{
... when != p
- v = list_entry(p, t2, list);
... when != p
}

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index cbf8eb4..b8461f4 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -447,13 +447,11 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 	switch (ieee->iw_mode) {
 	case IW_MODE_ADHOC:
 	{
-		struct list_head *p;
 		struct ieee_ibss_seq *entry = NULL;
 		u8 *mac = header->addr2;
 		int index = mac[5] % IEEE_IBSS_MAC_HASH_SIZE;
 
-		list_for_each(p, &ieee->ibss_mac_hash[index]) {
-			entry = list_entry(p, struct ieee_ibss_seq, list);
+		list_for_each_entry(entry, &ieee->ibss_mac_hash[index], list) {
 			if (!memcmp(entry->mac, mac, ETH_ALEN))
 				break;
 		}
-- 
2.7.4


