X-GM-THRID: 2658103459840
X-Received: by 10.112.174.36 with SMTP id bp4mr1026220lbc.15.1424673818973;
        Sun, 22 Feb 2015 22:43:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.228.136 with SMTP id si8ls506430lac.11.gmail; Sun, 22 Feb
 2015 22:43:38 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr1046520lab.0.1424673818467;
        Sun, 22 Feb 2015 22:43:38 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id ew5si609057wid.1.2015.02.22.22.43.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 22:43:38 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f47.google.com with SMTP id x12so23673282wgg.6
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 22:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Ad8yuSOkDArWcaoQBGqIWJ8wAhx9Fog5rkbtv4JA250=;
        b=fxln2NpB9Z2knhrHBgP4sNL3W4VRIHwJ1gmZcJ17BCOsQ9Dh4PM7I56SdlXy2vKlSg
         hTY3PX7Dcnq76hjKR5V6W5Mr4SGiNtQF2irSpdJeSW+UjQZpUqWRtY91qRq+PnKLVZF8
         b2MIejU4AT8Q/o94Dy/8z+hmo+mzNEgTHyMd9/th7CPCZl7eX+c7BB6vs2EGruCECQ8L
         k9Sybv5Bad1ej3ngUAc5HhrW6oc3bNWTh6IAgeAFvl73nO6dNt0EjKAW6MUaopQbzB/T
         f0uYb5ha3MI9yF3u6DWpPN9ttQWey2NcLN06ebnCx9l1oSC1L6B8WHKYsq9Jq054L/U6
         HluA==
X-Received: by 10.194.79.226 with SMTP id m2mr18921784wjx.60.1424673818363;
        Sun, 22 Feb 2015 22:43:38 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id n1sm14444199wib.11.2015.02.22.22.43.36
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 22:43:37 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: rtl8712: replace memcpy() by ether_addr_copy() using coccinelle and pack variable
Date: Mon, 23 Feb 2015 08:42:56 +0200
Message-Id: <1424673776-8404-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch focuses on fixing the following warning generated
by checkpatch.pl for the file rxtx.c

Prefer ether_addr_copy() over memcpy() if the Ethernet addresses
are __aligned(2)

@@ expression e1, e2; @@

- memcpy(e1, e2, ETH_ALEN);
+ ether_addr_copy(e1, e2);

struct _adapter {
        struct dvobj_priv          dvobjpriv;            /*     0    40*/
        struct mlme_priv           mlmepriv;             /*    40  1560*/
        /* --- cacheline 25 boundary (1600 bytes) --- */
        struct cmd_priv            cmdpriv;              /*  1600   136*/
        /* --- cacheline 27 boundary (1728 bytes) was 8 bytes ago --- */
        struct evt_priv            evtpriv;              /*  1736    96*/
        /* --- cacheline 28 boundary (1792 bytes) was 40 bytes ago --- * */
        struct io_queue *          pio_queue;            /*  1832     8*/
        struct xmit_priv           xmitpriv;             /*  1840   912*/
        /* --- cacheline 43 boundary (2752 bytes) --- */
        struct recv_priv           recvpriv;             /*  2752  1088*/
        /* --- cacheline 60 boundary (3840 bytes) --- */
        struct sta_priv            stapriv;              /*  3840   672*/
        /* --- cacheline 70 boundary (4480 bytes) was 32 bytes ago --- * */
        struct security_priv       securitypriv;         /*  4512  4816*/
        /* --- cacheline 145 boundary (9280 bytes) was 48 bytes ago --- * */
        struct registry_priv       registrypriv;         /*  9328   968*/
        /* --- cacheline 160 boundary (10240 bytes) was 56 bytes ago --- * */
        struct wlan_acl_pool       acl_list;             /* 10296  1536*/
        /* --- cacheline 184 boundary (11776 bytes) was 56 bytes ago --- * */
        struct pwrctrl_priv        pwrctrlpriv;          /* 11832   224*/
        /* --- cacheline 188 boundary (12032 bytes) was 24 bytes ago --- * */
        struct eeprom_priv         eeprompriv;           /* 12056   508*/

        /* XXX 4 bytes hole, try to pack */

        /* --- cacheline 196 boundary (12544 bytes) was 24 bytes ago --- * */
        struct hal_priv            halpriv;              /* 12568    88*/
        /* --- cacheline 197 boundary (12608 bytes) was 48 bytes ago --- * */
        struct led_priv            ledpriv;              /* 12656   304*/
        /* --- cacheline 202 boundary (12928 bytes) was 32 bytes ago --- * */
        struct mp_priv             mppriv;               /* 12960  1080*/
        /* --- cacheline 219 boundary (14016 bytes) was 24 bytes ago --- * */
        s32                        bDriverStopped;       /* 14040     4*/
        s32                        bSurpriseRemoved;     /* 14044     4*/
        u32                        IsrContent;           /* 14048     4*/
        u32                        ImrContent;           /* 14052     4*/
	 u8                         EepromAddressSize;    /* 14056     1*/
        u8                         hw_init_completed;    /* 14057     1*/

        /* XXX 6 bytes hole, try to pack */

        struct task_struct *       cmdThread;            /* 14064     8*/
        pid_t                      evtThread;            /* 14072     4*/

        /* XXX 4 bytes hole, try to pack */

        /* --- cacheline 220 boundary (14080 bytes) --- */
        struct task_struct *       xmitThread;           /* 14080     8*/
        pid_t                      recvThread;           /* 14088     4*/

        /* XXX 4 bytes hole, try to pack */

        uint                       (*dvobj_init)(struct _adapter *); /*14096     8 */
        void                       (*dvobj_deinit)(struct _adapter *);/* 14104     8 */
        struct net_device *        pnetdev;              /* 14112     8*/
        int                        bup;                  /* 14120     4*/

        /* XXX 4 bytes hole, try to pack */

        struct net_device_stats    stats;                /* 14128   184*/
        /* --- cacheline 223 boundary (14272 bytes) was 40 bytes ago --- * */
        struct iw_statistics       iwstats;              /* 14312    32*/
        /* --- cacheline 224 boundary (14336 bytes) was 8 bytes ago --- * */
        int                        pid;                  /* 14344     4*/

        /* XXX 4 bytes hole, try to pack */

        struct work_struct         wkFilterRxFF0;        /* 14352    32*/
        u8                         blnEnableRxFF0Filter; /* 14384     1*/

        /* XXX 3 bytes hole, try to pack */

        spinlock_t                 lockRxFF0Filter;      /* 14388     4*/
        const struct firmware  *   fw;                   /* 14392     8*/
	 u8                         EepromAddressSize;    /* 14056     1*/
        u8                         hw_init_completed;    /* 14057     1*/

        /* XXX 6 bytes hole, try to pack */

        struct task_struct *       cmdThread;            /* 14064     8*/
        pid_t                      evtThread;            /* 14072     4*/

        /* XXX 4 bytes hole, try to pack */

        /* --- cacheline 220 boundary (14080 bytes) --- */
        struct task_struct *       xmitThread;           /* 14080     8*/
        pid_t                      recvThread;           /* 14088     4*/

        /* XXX 4 bytes hole, try to pack */

        uint                       (*dvobj_init)(struct _adapter *); /*14096     8 */
        void                       (*dvobj_deinit)(struct _adapter *);/* 14104     8 */
        struct net_device *        pnetdev;              /* 14112     8*/
        int                        bup;                  /* 14120     4*/

        /* XXX 4 bytes hole, try to pack */

        struct net_device_stats    stats;                /* 14128   184*/
        /* --- cacheline 223 boundary (14272 bytes) was 40 bytes ago --- * */
        struct iw_statistics       iwstats;              /* 14312    32*/
        /* --- cacheline 224 boundary (14336 bytes) was 8 bytes ago --- * */
        int                        pid;                  /* 14344     4*/

        /* XXX 4 bytes hole, try to pack */

        struct work_struct         wkFilterRxFF0;        /* 14352    32*/
        u8                         blnEnableRxFF0Filter; /* 14384     1*/

        /* XXX 3 bytes hole, try to pack */

        spinlock_t                 lockRxFF0Filter;      /* 14388     4*/
        const struct firmware  *   fw;                   /* 14392     8*/
	/* --- cacheline 225 boundary (14400 bytes) --- */
        struct usb_interface *     pusb_intf;            /* 14400     8*/
        struct mutex               mutex_start;          /* 14408    40*/

        /* XXX last struct has 4 bytes of padding */

        struct completion          rtl8712_fw_ready;     /* 14448    32*/
        /* --- cacheline 226 boundary (14464 bytes) was 16 bytes ago --- * */

        /* size: 14480, cachelines: 227, members: 40 */
        /* sum members: 14451, holes: 7, sum holes: 29 */
        /* paddings: 1, sum paddings: 4 */
        /* last cacheline: 16 bytes */
};

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/rtl8712/recv_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 409c8c8..3640dd4 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -96,7 +96,7 @@ void r8712_handle_tkip_mic_err(struct _adapter *padapter, u8 bgroup)
 	else
 		ev.flags |= IW_MICFAILURE_PAIRWISE;
 	ev.src_addr.sa_family = ARPHRD_ETHER;
-	memcpy(ev.src_addr.sa_data, &pmlmepriv->assoc_bssid[0], ETH_ALEN);
+	ether_addr_copy(ev.src_addr.sa_data, &pmlmepriv->assoc_bssid[0]);
 	memset(&wrqu, 0x00, sizeof(wrqu));
 	wrqu.data.length = sizeof(ev);
 	wireless_send_event(padapter->pnetdev, IWEVMICHAELMICFAILURE, &wrqu,
-- 
1.8.3.2


