X-GM-THRID: 6469789511840694272
X-Received: by 10.25.150.66 with SMTP id y63mr50687lfd.23.1506496774317;
        Wed, 27 Sep 2017 00:19:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.72 with SMTP id x8ls177096ljd.12.gmail; Wed, 27 Sep 2017
 00:19:32 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBiBgiOOb3tvQ/NM/3YbkzCQCU3FiOYE9Hm/sV9QEhLpor5IPej5QKy3rSV53OlJkRcVzJp
X-Received: by 10.25.202.17 with SMTP id a17mr54555lfg.6.1506496772801;
        Wed, 27 Sep 2017 00:19:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506496772; cv=none;
        d=google.com; s=arc-20160816;
        b=RF6TdDemGHpsm51ijCfzWf+fCNSb8JWFn5Oo/UD5HFyNcjZWSLdagWuqmgYJ3+PkCw
         JEQt5LhJ5tyc7hHuFMeTyWxW+4fsXtBYrRh9KkFo0HPZ1a1wE/Oih16a0wfsNwVOKeYo
         6+YLEcZwCOVRwCbD8Fk3XerOp1tghWRulDIJ41gGkTlPXt/xvZZ8EfWujLZ5THISD7rA
         mOu7gSH3pmnowpcJqLwRo+g4YBKclYMaN9MgwgBOIgaW4BpQ8jr6klS0vj2Px+acKSx5
         qgS+V6tmd36nsYKxHwQSkg/DN+b+b4PUkpzKa13Oc8P0Jteq6IC6pPPwXjGZJ1kEHDMD
         To9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:cc:to:from:date
         :arc-authentication-results;
        bh=Jj++DQmP4Ym8HBjfR4r78gydmlF0dlzn0IftE9mLrB4=;
        b=WxgqacL3YuKrMWKqjxCaGSYVBjp4Rx/qmM27X7XS0XZurKKx7GGSSnXmiOERDUVtin
         irYdjnwSCIo9G/uZgniNxpr964EvIwfGXwagN9WPl8laKd8twzcembIFSOVFJ1+cibyp
         JKwPZR528iojyUjlZDrLcEZMFxGazMPRwRSJPtY4qYQ7UCingKOt+jCRj3gvVAqpYNpE
         lZhmzTQt2nI867YrMMFqwUAX+c+Sge10Rdj+DfjxStaL6hBNzRXhRssXaoGs/wB5gPKS
         skLIiHkByG6hHBTMB++7qpX04p+GaxRvPoqG08j7K8ztDgthyF7zyop5YVGxs5bzmuWi
         Mvwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q145si1093596wme.4.2017.09.27.00.19.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 00:19:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,444,1500933600"; 
   d="scan'208";a="292897114"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Sep 2017 09:19:31 +0200
Date: Wed, 27 Sep 2017 09:19:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: kbuild-all@01.org, Daniel Vetter <daniel.vetter@intel.com>, 
    Jani Nikula <jani.nikula@linux.intel.com>, 
    Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, 
    dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] drm/gem: use new idr deletion interface to cleanup
 drm_gem_handle_delete() (fwd)
Message-ID: <alpine.DEB.2.20.1709270918210.3186@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Unlock missing on failure of the new call to idr_remove.

julia

---------- Forwarded message ----------
Date: Wed, 27 Sep 2017 15:14:54 +0800
From: kbuild test robot <fengguang.wu@intel.com>
To: kbuild@01.org
Cc: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [PATCH] drm/gem: use new idr deletion interface to cleanup
    drm_gem_handle_delete()

CC: kbuild-all@01.org
In-Reply-To: <20170925184728.GA8861@aishwarya>
TO: Aishwarya Pant <aishpant@gmail.com>
CC: Daniel Vetter <daniel.vetter@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>, Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com
CC: outreachy-kernel@googlegroups.com

Hi Aishwarya,

[auto build test WARNING on drm/drm-next]
[also build test WARNING on v4.14-rc2 next-20170926]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Aishwarya-Pant/drm-gem-use-new-idr-deletion-interface-to-cleanup-drm_gem_handle_delete/20170927-121819
base:   git://people.freedesktop.org/~airlied/linux.git drm-next
:::::: branch date: 3 hours ago
:::::: commit date: 3 hours ago

>> drivers/gpu/drm/drm_gem.c:287:2-8: preceding lock on line 284

# https://github.com/0day-ci/linux/commit/05eadb82a771dd64588809b382fc437aac5c981f
git remote add linux-review https://github.com/0day-ci/linux
git remote update linux-review
git checkout 05eadb82a771dd64588809b382fc437aac5c981f
vim +287 drivers/gpu/drm/drm_gem.c

8815b23aa Chris Wilson   2016-01-05  269
673a394b1 Eric Anholt    2008-07-30  270  /**
89d61fc0f Daniel Vetter  2014-01-21  271   * drm_gem_handle_delete - deletes the given file-private handle
89d61fc0f Daniel Vetter  2014-01-21  272   * @filp: drm file-private structure to use for the handle look up
89d61fc0f Daniel Vetter  2014-01-21  273   * @handle: userspace handle to delete
89d61fc0f Daniel Vetter  2014-01-21  274   *
df2e0900a Daniel Vetter  2015-10-22  275   * Removes the GEM handle from the @filp lookup table which has been added with
df2e0900a Daniel Vetter  2015-10-22  276   * drm_gem_handle_create(). If this is the last handle also cleans up linked
df2e0900a Daniel Vetter  2015-10-22  277   * resources like GEM names.
673a394b1 Eric Anholt    2008-07-30  278   */
ff72145ba Dave Airlie    2011-02-07  279  int
a1a2d1d32 Pekka Paalanen 2009-08-23  280  drm_gem_handle_delete(struct drm_file *filp, u32 handle)
673a394b1 Eric Anholt    2008-07-30  281  {
673a394b1 Eric Anholt    2008-07-30  282  	struct drm_gem_object *obj;
673a394b1 Eric Anholt    2008-07-30  283
673a394b1 Eric Anholt    2008-07-30 @284  	spin_lock(&filp->table_lock);
05eadb82a Aishwarya Pant 2017-09-26  285  	obj = idr_remove(&filp->object_idr, handle);
05eadb82a Aishwarya Pant 2017-09-26  286  	if (!obj)
673a394b1 Eric Anholt    2008-07-30 @287  		return -EINVAL;
f6cd7daec Chris Wilson   2016-04-15  288  	/* Release driver's reference and decrement refcount. */
f6cd7daec Chris Wilson   2016-04-15  289  	drm_gem_object_release_handle(handle, obj, filp);
673a394b1 Eric Anholt    2008-07-30  290  	spin_unlock(&filp->table_lock);
673a394b1 Eric Anholt    2008-07-30  291
673a394b1 Eric Anholt    2008-07-30  292  	return 0;
673a394b1 Eric Anholt    2008-07-30  293  }
ff72145ba Dave Airlie    2011-02-07  294  EXPORT_SYMBOL(drm_gem_handle_delete);
673a394b1 Eric Anholt    2008-07-30  295

:::::: The code at line 287 was first introduced by commit
:::::: 673a394b1e3b69be886ff24abfd6df97c52e8d08 drm: Add GEM ("graphics execution manager") to i915 driver.

:::::: TO: Eric Anholt <eric@anholt.net>
:::::: CC: Dave Airlie <airlied@linux.ie>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

