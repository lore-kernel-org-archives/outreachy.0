X-GM-THRID: 6255520477727424512
X-Received: by 10.107.6.163 with SMTP id f35mr5843148ioi.25.1456476859736;
        Fri, 26 Feb 2016 00:54:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.98 with SMTP id k89ls999992qgk.69.gmail; Fri, 26 Feb
 2016 00:54:18 -0800 (PST)
X-Received: by 10.13.213.208 with SMTP id x199mr260248ywd.48.1456476858856;
        Fri, 26 Feb 2016 00:54:18 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ui7si1817964pab.0.2016.02.26.00.54.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 00:54:18 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id y7so4191979paa.0
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 00:54:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2+MdtlXwXpbt3i45EeZG3On7QDuDFcT/CFzuQn9iGQE=;
        b=d1DcomtJw+Aerdft8BSLzJD7bns9p1TLnFOIlL6rJsQxduebnaNXMfYsT5SWJSvzD2
         29V6/+S2lW3MT3gRm64lduFBwf92T7jT0MHTk1NCZxIE8mn2Sb3uVlhzJ10uWAbwIjw8
         yQmjPk29+LCi9Q7jXbudZ9iOJ7sPioCtczujKf70bT8PA7avIBnC/oOiBOn0W8HEDWKY
         YIgeewIXj4i7SadoKdby0e2hMH9R4hMkWL9gKZ1nxDIycR0kZ8nAvWKghtv0Gs9zYA4/
         LYRQ8SZvYcrDlfOz7PaLhAp+ExCcP4MPgTkjsvBhd8F/duH+gtFHwsAbk/DItjtxMfn0
         3P1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2+MdtlXwXpbt3i45EeZG3On7QDuDFcT/CFzuQn9iGQE=;
        b=JxmmFpig5Cp4j8Oq52++GVcmB314s/fH3Ss5zlRC17t9rv9bAgIYKy3VnrKomW+3VX
         d0ZbYlSz9vyqG3cY1Wxw/g0jZjyVR5BZC0fUAImao1WtgJygaaG0DsKVlkWa1y5f8hJG
         GktJA6VJmZo9xDjOFsUA9iiBlqE4JqEs+1E7rZgXTU+p9AbmFbNdJ/Cxi7/27EXsJV2G
         pwFZ0XKFMttEyp1TlwBZUDjmT5GuYBXJdvW24dgS7LuCakdzzL46Aqn7UjD0R96ES71F
         1HixVR+Km+hYKDxKDn5ABYjBMBX+pvDST95KmcfiiSG9Ppx3EWXxjuFsEOYYVJy6KuEW
         oKgA==
X-Gm-Message-State: AD7BkJJIcL4mdgbJ4Kx46dNLDkvzPIVv3FG9xbCy4xjKFpj6NqC7uPVaB8IaDUex36ImAw==
X-Received: by 10.66.252.73 with SMTP id zq9mr524559pac.16.1456476858612;
        Fri, 26 Feb 2016 00:54:18 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id 195sm17594432pfa.5.2016.02.26.00.54.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 00:54:18 -0800 (PST)
Date: Fri, 26 Feb 2016 14:24:14 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/8] staging: lustre: Replace kmem_cache_alloc with
 kmem_cache_zalloc
Message-ID: <cover.1456475758.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset replaces kmem_cache_alloc with kmem_cache_zalloc.

The Coccinelle semantic patch used to make this change is as
follows:
// <smpl>
@@
expression e,f;
@@
- kmem_cache_alloc(e, f |__GFP_ZERO)
+ kmem_cache_zalloc(e, f)
// </smpl>

Amitoj Kaur Chawla (8):
  staging: lustre: lclient: Replace kmem_cache_alloc with
    kmem_cache_zalloc
  staging: lustre: obdclass: Replace kmem_cache_alloc with
    kmem_cache_zalloc
  staging: lustre: lov: Replace kmem_cache_alloc with kmem_cache_zalloc
  staging: lustre: obdecho: Replace kmem_cache_alloc with
    kmem_cache_zalloc
  staging: lustre: ptlrpc: Replace kmem_cache_alloc with
    kmem_cache_zalloc
  staging: lustre: osc: Replace kmem_cache_alloc with kmem_cache_zalloc
  staging: lustre: ldlm: Replace kmem_cache_alloc with kmem_cache_zalloc
  staging: lustre: llite: Replace kmem_cache_alloc with
    kmem_cache_zalloc

 drivers/staging/lustre/lustre/lclient/lcommon_cl.c  | 10 +++++-----
 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c    |  2 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c      |  2 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c  |  2 +-
 drivers/staging/lustre/lustre/llite/file.c          |  4 ++--
 drivers/staging/lustre/lustre/llite/llite_close.c   |  2 +-
 drivers/staging/lustre/lustre/llite/llite_lib.c     |  3 +--
 drivers/staging/lustre/lustre/llite/namei.c         |  2 +-
 drivers/staging/lustre/lustre/llite/remote_perm.c   |  4 ++--
 drivers/staging/lustre/lustre/llite/super25.c       |  2 +-
 drivers/staging/lustre/lustre/llite/vvp_dev.c       |  4 ++--
 drivers/staging/lustre/lustre/llite/xattr_cache.c   |  2 +-
 drivers/staging/lustre/lustre/lov/lov_dev.c         |  6 +++---
 drivers/staging/lustre/lustre/lov/lov_ea.c          |  2 +-
 drivers/staging/lustre/lustre/lov/lov_lock.c        |  6 +++---
 drivers/staging/lustre/lustre/lov/lov_object.c      |  2 +-
 drivers/staging/lustre/lustre/lov/lov_request.c     | 11 ++++-------
 drivers/staging/lustre/lustre/lov/lovsub_dev.c      |  2 +-
 drivers/staging/lustre/lustre/lov/lovsub_lock.c     |  2 +-
 drivers/staging/lustre/lustre/lov/lovsub_object.c   |  2 +-
 drivers/staging/lustre/lustre/obdclass/cl_lock.c    |  2 +-
 drivers/staging/lustre/lustre/obdclass/cl_object.c  |  2 +-
 drivers/staging/lustre/lustre/obdclass/genops.c     |  2 +-
 drivers/staging/lustre/lustre/obdecho/echo_client.c |  8 ++++----
 drivers/staging/lustre/lustre/osc/osc_cache.c       |  2 +-
 drivers/staging/lustre/lustre/osc/osc_dev.c         |  4 ++--
 drivers/staging/lustre/lustre/osc/osc_io.c          |  2 +-
 drivers/staging/lustre/lustre/osc/osc_lock.c        |  2 +-
 drivers/staging/lustre/lustre/osc/osc_object.c      |  2 +-
 drivers/staging/lustre/lustre/osc/osc_quota.c       |  2 +-
 drivers/staging/lustre/lustre/osc/osc_request.c     |  4 ++--
 drivers/staging/lustre/lustre/ptlrpc/client.c       |  2 +-
 32 files changed, 51 insertions(+), 55 deletions(-)

-- 
1.9.1


