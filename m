X-GM-THRID: 6330207690176856064
X-Received: by 10.129.155.145 with SMTP id s139mr2377035ywg.31.1473866330992;
        Wed, 14 Sep 2016 08:18:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.70 with SMTP id m67ls442295iod.41.gmail; Wed, 14 Sep
 2016 08:18:50 -0700 (PDT)
X-Received: by 10.107.141.145 with SMTP id p139mr2806240iod.15.1473866330442;
        Wed, 14 Sep 2016 08:18:50 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id si10si1449223pab.1.2016.09.14.08.18.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 08:18:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id pp5so881393pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 08:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1DsWkXSsJxqjWiUAHWBOQVv/h/Es3SHG3yHr/tQQBLE=;
        b=fdk2PkRq7mQkhh7D9UAXILPzMKXforObFoHnZyliDHQMR7zOVWXPidkyDVNYp+JPDl
         ld7Rzv6+NqH+8tiSSncItjKuzVgR9GS9mnGyxWofpkEKufhCR9fDYpXLmZOFcfV7VL1X
         e6vDrMLqe8LvTAuxGiudebpN2Vq7PP+eKzdQgZ+aG/aDK9uWi2eW80cn9QXh76FIMrKw
         aOTRiwcTKhn6iLJ/O2ki21DTcpNTRxm1fkkJsTQTl6eD1731GKQBXI5kdKuolYFdJXLJ
         UOtXBhpmowr5g2ydmMUlp8q6DWyJdJD0MGnz2d2lqo0VkATqAvvQ1YtflggaCmrqYFE3
         t6RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1DsWkXSsJxqjWiUAHWBOQVv/h/Es3SHG3yHr/tQQBLE=;
        b=bbqE8fjAuruHyn+NGMBBxr+l+CQgC3vTgADHFURhAR8mcN2+ZfZyb9UZVUECf2PGfM
         80issDmb5TiDAAkqY3evbFjShjE9mZCuCo7hYDW/tZhGl7PwaCNL01Ox85uf2R36Nqfd
         T0XX3sXUPHpYek/2AwNUXcVC+7qcAS9hon8Q0/f4jMTvxpHQ9ksU3g1Nlw+AWpQuyl1B
         hqxLrv/zWVgo0SHGYy2Wqgx475GB3IWoNfQSCv5zPcdvuHyYDn3wROKx/lEeP8sP1RaT
         SgUWFZ2ca3hKhyM1/mutpe1fhCbwsRvjt3fGjqND8l2dgZ9aEFZfVxebh8ZG71I9JaK4
         7qvw==
X-Gm-Message-State: AE9vXwPEiFg0vp/SrJWJ427XeUsTKKVH5CUmMygTXHeyKEE7K/IfSy3PeWvPO2WBsN9aMw==
X-Received: by 10.66.72.8 with SMTP id z8mr5392211pau.141.1473866330193;
        Wed, 14 Sep 2016 08:18:50 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id o87sm32030718pfa.16.2016.09.14.08.18.47
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 08:18:49 -0700 (PDT)
Date: Wed, 14 Sep 2016 20:48:34 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: marcel@holtmann.org
Cc: outreachy-kernel@googlegroups.com, gustavo@padovan.org
Subject: [PATCH 1/3] drivers: bluetooth: bfusb: Line over 80 characters in
 conditional stataments
Message-ID: <20160914151712.GA9806@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch remove the warning of checkpatch.pl Line over 80 characters.
to remove this warning break the conditional statements into small chunks.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/bluetooth/bfusb.c | 27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/bluetooth/bfusb.c b/drivers/bluetooth/bfusb.c
index 3bf4ec6..1c2e16d 100644
--- a/drivers/bluetooth/bfusb.c
+++ b/drivers/bluetooth/bfusb.c
@@ -148,7 +148,7 @@ static int bfusb_send_bulk(struct bfusb_data *data, struct sk_buff *skb)
 
 	err = usb_submit_urb(urb, GFP_ATOMIC);
 	if (err) {
-		BT_ERR("%s bulk tx submit failed urb %p err %d", 
+		BT_ERR("%s bulk tx submit failed urb %p err %d",
 					data->hdev->name, urb, err);
 		skb_unlink(skb, &data->pending_q);
 		usb_free_urb(urb);
@@ -289,30 +289,38 @@ static inline int bfusb_recv_block(struct bfusb_data *data, int hdr, unsigned ch
 		switch (pkt_type) {
 		case HCI_EVENT_PKT:
 			if (len >= HCI_EVENT_HDR_SIZE) {
-				struct hci_event_hdr *hdr = (struct hci_event_hdr *) buf;
+				struct hci_event_hdr *hdr = (struct
+							     hci_event_hdr *)
+							     buf;
 				pkt_len = HCI_EVENT_HDR_SIZE + hdr->plen;
 			} else {
-				BT_ERR("%s event block is too short", data->hdev->name);
+				BT_ERR("%s event block is too short",
+				       data->hdev->name);
 				return -EILSEQ;
 			}
 			break;
 
 		case HCI_ACLDATA_PKT:
 			if (len >= HCI_ACL_HDR_SIZE) {
-				struct hci_acl_hdr *hdr = (struct hci_acl_hdr *) buf;
-				pkt_len = HCI_ACL_HDR_SIZE + __le16_to_cpu(hdr->dlen);
+				struct hci_acl_hdr *hdr = (struct hci_acl_hdr *)
+							  buf;
+				pkt_len = HCI_ACL_HDR_SIZE + __le16_to_cpu
+								(hdr->dlen);
 			} else {
-				BT_ERR("%s data block is too short", data->hdev->name);
+				BT_ERR("%s data block is too short",
+				       data->hdev->name);
 				return -EILSEQ;
 			}
 			break;
 
 		case HCI_SCODATA_PKT:
 			if (len >= HCI_SCO_HDR_SIZE) {
-				struct hci_sco_hdr *hdr = (struct hci_sco_hdr *) buf;
+				struct hci_sco_hdr *hdr = (struct hci_sco_hdr *)
+							   buf;
 				pkt_len = HCI_SCO_HDR_SIZE + hdr->dlen;
 			} else {
-				BT_ERR("%s audio block is too short", data->hdev->name);
+				BT_ERR("%s audio block is too short",
+				       data->hdev->name);
 				return -EILSEQ;
 			}
 			break;
@@ -329,7 +337,8 @@ static inline int bfusb_recv_block(struct bfusb_data *data, int hdr, unsigned ch
 		data->reassembly = skb;
 	} else {
 		if (!data->reassembly) {
-			BT_ERR("%s unexpected continuation block", data->hdev->name);
+			BT_ERR("%s unexpected continuation block",
+			       data->hdev->name);
 			return -EIO;
 		}
 	}
-- 
1.9.1


