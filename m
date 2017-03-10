X-GM-THRID: 6395922242043117568
X-Received: by 10.99.0.79 with SMTP id 76mr8465096pga.145.1489166692137;
        Fri, 10 Mar 2017 09:24:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.225 with SMTP id n94ls2609024ioi.43.gmail; Fri, 10 Mar
 2017 09:24:51 -0800 (PST)
X-Received: by 10.99.111.143 with SMTP id k137mr9596762pgc.1.1489166691004;
        Fri, 10 Mar 2017 09:24:51 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x231.google.com (mail-yw0-x231.google.com. [2607:f8b0:4002:c05::231])
        by gmr-mx.google.com with ESMTPS id y63si1332113ywe.5.2017.03.10.09.24.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 09:24:50 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::231 as permitted sender) client-ip=2607:f8b0:4002:c05::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::231 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x231.google.com with SMTP id v76so27911503ywg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 09:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=AVLd8aQd8f/cOHZt5iNYhPLWpbPZq10Pn+NGSwWyndM=;
        b=GLxTQQjKMbz1h6Y+UB/HkIdiNk3+vMZjtHFqO7YHO5CczCpng+8WZN9eAKQrbKmmlC
         E8drYTSqXcim7aDAJjg5qG5GDN8XOYQAT8t8HBjiAqQX3fuNJIP1BtXFFgt4Atvnrg1e
         ta/l4rxfdSeWJKVrl+mM9T3nTlyFdCXA9JsiE1kJm54VU97JXQYMw5NBFt/SJd4SHQr5
         KV3nuuzzSyWPKfW1O+UMsmny2USddib8hsIAovr4YcMnmzXk9lBR8qEzzQyZxCFdWrHI
         2R6tRATNcfLINDhJYigdW94Ww9xg+cWxLkRyPS+XeFP8MHKrrvHNIqstdznq0Wc5dAjR
         FtbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=AVLd8aQd8f/cOHZt5iNYhPLWpbPZq10Pn+NGSwWyndM=;
        b=EB6/VuL6OrZTDDNGR00jxybFPZEC8d9F4qse72hdExZQVvlzLFLln02cQIqqijPeme
         VsgVTKPCfkMRHzvbottA8Hn9oo6u+7kjsJk2pUkgbNOpmxqHH/3MB5m0UsB1DnUc2Zkp
         TkooPC5X/DLpPGo1auvorVFBabOUYxt6Ie7wZYChZNIoBwWpZk1IoHD17ngoB6h0Rl5u
         ZMUPUHrMF/SFZBvTI9TR0PRT9PBXDB8p+NylYrsTXL2/A33XOX5p/CJF45Mc7mq1Rslw
         cuK7zYtugM4W4+mMTEBISMN1MFNXgph+jmPXb6t4uoOcqaguSnn7+93qC6W74Q8t9QWF
         hORg==
X-Gm-Message-State: AMke39no3tEzk/vUpNwphrje6h/VSEzVnLLC+RlcEtyarKsL/vF+Jirj1Vxit5T7AyV4NJBZmbnlEKvAwMd/aw==
X-Received: by 10.129.86.132 with SMTP id k126mr6228455ywb.273.1489166690506;
 Fri, 10 Mar 2017 09:24:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.173.10 with HTTP; Fri, 10 Mar 2017 09:24:10 -0800 (PST)
From: sayli karnik <karniksayli1995@gmail.com>
Date: Fri, 10 Mar 2017 22:54:10 +0530
Message-ID: <CAKG5xWiq5T9fgTpnb2vtCwFv4HrBnyBBtYGTpp1_zUS5k-Gq_g@mail.gmail.com>
Subject: Doubt regarding use of a function
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

ieee80211 has the following function which to me does nothing-
void ieee80211_tkip_null(void)
{
     printk("============>%s()\n", __func__);
     return;
}

Before its function call there is this comment-
/* These function were added to load crypte module autoly */
         ieee80211_tkip_null();

Is this function needed in the driver? If not, can I send in a patch
removing it?

