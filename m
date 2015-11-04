X-GM-THRID: 6210359704363728896
X-Received: by 10.112.12.131 with SMTP id y3mr3200298lbb.5.1446596420721;
        Tue, 03 Nov 2015 16:20:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.32.202 with SMTP id g193ls71720lfg.18.gmail; Tue, 03 Nov
 2015 16:20:20 -0800 (PST)
X-Received: by 10.112.136.138 with SMTP id qa10mr2642455lbb.22.1446596420125;
        Tue, 03 Nov 2015 16:20:20 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id l1si728973wmb.1.2015.11.03.16.20.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 16:20:20 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0MhJ69-1a6dpi0iNF-00MIkB; Wed, 04 Nov
 2015 01:20:19 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH 4/5] fs: nfsd: Replace time_t with u32 dl_time
Date: Wed, 04 Nov 2015 01:20:18 +0100
Message-ID: <3941119.GsB012puS9@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <69d410176551b84828085ae6a2bdd9f35026a9fc.1445960986.git.ksenija.stanojevic@gmail.com>
References: <cover.1445960986.git.ksenija.stanojevic@gmail.com> <69d410176551b84828085ae6a2bdd9f35026a9fc.1445960986.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:rE+jT3rH/K1/nkIt1PF1aLhnlIJOTk3UyJ4qG2k54Je1dsrmFQX
 ysSsCfE721r74amGECE6r77ElV+paFX9r6PqOVSHo8hmnsVlWm0clPqjn3mD+bmSsZ5n9em
 A8JC9Uoi71/hLAJ+rthqVedJazlVs4D5CvbTrUF9AJ8IhtbEnx9YSrmh3ZcL9YGo+5dqVST
 MTehEhJR9nsav+MZV0TAg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:lSgGj0tGk64=:7+CVStkE8+RuZk++DJl84C
 fYlRZ1Ru6uKpXDjk4E9+LRbVE5es4wW+dpjdocgBfUdpZYm496vN7sDEMnrYaME2o4gxgWvXb
 sxN8HUWlvbcehi0ZlGx8wlkDCWYGIDFRT+uFGs2MJhIccf6abMlr7liakH1kG+71MoxQUC/Zk
 SAJJwzM/vnBSz8lj5kVttU56S/pCSClNLNDIBpFx2bcshvD/ehZy88IC8yeh3FF6qFk/tz7o5
 RoU/iusZS+mHLhFMr2fvf/RSZJadJ67N6Lrp4K0FD/5rmhrKDH/4QFvOfKOzYssaq3AIelhhl
 NgCvZt93sqGCj8t7tsGNDrErDegL7W8/zfYz4CikTNzRzM+FccM44WKbbVRWvYSSXzrduTTd0
 ZOqQiDDJh7Vvf5tO1aAqlbvWBc+aGj61LmHJBqLN8PGe8MYDbNbwHwzPhtipr6NJCRv+jS36a
 bXk5GP0Ind4gTvW7GgAR+LkspHgcbTXw8kg8qCdMaRLYJQvKxxpwraRYd9v/IucmAOZ+GxfjW
 4OwAgSs9ta1wdWwe7BQxp4P4PLuTikDyfItfvtc8MxvxQAeEHLLf0uzj2fUEVKM/3IoLnLmwR
 yPysQ9AH0SCh7kE/h5T7I+7/3Ly+eqRAGABjZHU4DWYGmtjWxFrrC/E58oXBlxe7a2WbzdNmR
 1Y5epMtCZZkEAMj8KawWLitYwOiXSDc5E7SxEibcyB+LGfFYzWHPO9NpFAqg8E2yu0T3noEnl
 E5+b3JA4qFvhD/R/

On Tuesday 27 October 2015 09:11:45 Ksenija Stanojevic wrote:
> Replace time_t type and get_seconds function which are not y2038 safe on
> 32-bit systems. Function ktime_get_seconds use monotonic instead of real
> time and therefore will not cause overflow.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

dl_time is compared to the local 'cutoff' in nfs4_laundromat(), so you have
to do the change from real to monotonic time in both places as well (same
as cl_time I mentioned earlier).

	Arnd

