X-GM-THRID: 6395910423688773632
X-Received: by 10.99.185.1 with SMTP id z1mr8549531pge.40.1489163940772;
        Fri, 10 Mar 2017 08:39:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.52.140 with SMTP id b134ls2774695ioa.38.gmail; Fri, 10 Mar
 2017 08:38:59 -0800 (PST)
X-Received: by 10.99.125.5 with SMTP id y5mr9121415pgc.30.1489163939773;
        Fri, 10 Mar 2017 08:38:59 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y203si1451975pfb.0.2017.03.10.08.38.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:38:59 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 25so10793479pgy.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 08:38:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ndgSuVW4xlr6K4YqD+v3+q600CbLkyWHEOtLx+FeyNs=;
        b=haoviETx5Bs/tGu/0HE3JV0BU4K7e3RK7DDqBY8wZQbKVWRPEA5cPAW88GZgCxqocl
         Uyu7JCp78u6NbPyxT5coAkZrApE6RMJBM0aGvs27nWqFdkyLMRsY0YOpCzbSkAUjnrM+
         WV+yKIlIPKQBQ/24x6ETudwkQHMgeWRHhaE7gR6DVAxkhXfw5DieI8kzp1FjEH9prwfC
         loF1OkYR/BODF66bYN89mTvwjApQHHMQ3FD4nbUF93IwBQaN6epudBt0Qz9H7x8JEeOp
         gPNLXi82HFABY4VM5r++esV83SbHOe8x91Z3p5A6t07xOh93hdA6ciwp9Xz5YDQhV/NN
         3PeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ndgSuVW4xlr6K4YqD+v3+q600CbLkyWHEOtLx+FeyNs=;
        b=BwEtRhA/RdlMIu8vO30Bm8vwC0Elr1kVxTHvqwH0vt3fsrwklR214LQ6pqkS7e/qQq
         BiP02GgIXzMSjtlIKiqeTi5SzkYwNFekreMurk4dlZDHTJF5+gl+YeGQj7FsPR0F7FoV
         KKPZNNlUaSfLWTfxs/zgJxo09/2e1d/mzgRM4la+SrQQKlTj7Px4Nz97hw0iPGJn6H84
         JZ5fJqjtlF6FPnjMDg1nvlA9u4MhHMh2MblSOIIGXzOxM1ft+TULILMOQsnLMNiUAYcI
         2HiuYn69D4jrXBdDv2ll+mLKJUBjbYCYBKmakDQwCuPMnemU3U0bcXIZrGM01LlHndvI
         9zUA==
X-Gm-Message-State: AMke39nzb67HoFXc+ZgsU8SOo1vXNmZUAZRBRmfM7kG10SZAoXelnEmOX54bYwkKn9FFgQ==
X-Received: by 10.99.103.133 with SMTP id b127mr21685773pgc.29.1489163939256;
        Fri, 10 Mar 2017 08:38:59 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.147])
        by smtp.gmail.com with ESMTPSA id g85sm19623788pfd.89.2017.03.10.08.38.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:38:58 -0800 (PST)
Date: Fri, 10 Mar 2017 22:08:33 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] staging: vc04_services: clean up anonymous field
 declarations
Message-ID: <cover.1489163547.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset replaces anonymous field declarations for the typedef
SERVICE_CREATION_T with explicit field declarations in the drivers 
bcm2835-audio and bcm2835-camera.

typedef struct {
        struct vchi_version version;
        int32_t service_id;
        VCHI_CONNECTION_T *connection;
        uint32_t rx_fifo_size;
        uint32_t tx_fifo_size;
        VCHI_CALLBACK_T callback;
        void *callback_param;
        /* client intends to receive bulk transfers of
                odd lengths or into unaligned buffers */
        int32_t want_unaligned_bulk_rx;
        /* client intends to transmit bulk transfers of
                odd lengths or out of unaligned buffers */
        int32_t want_unaligned_bulk_tx;
        /* client wants to check CRCs on (bulk) xfers.
                Only needs to be set at 1 end - will do both directions. */
        int32_t want_crc;
} SERVICE_CREATION_T;


** HERE ***

Aishwarya Pant (2):
  staging: bcm2835-audio: remove anonymous field declarations
  staging: bcm2835-camera: remove anonymous field declarations

 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c      | 20 ++++++++++----------
 .../vc04_services/bcm2835-camera/mmal-vchiq.c        | 20 ++++++++++----------
 2 files changed, 20 insertions(+), 20 deletions(-)

-- 
2.7.4


