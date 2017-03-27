X-GM-THRID: 6401831056231628800
X-Received: by 10.25.153.74 with SMTP id b71mr2658576lfe.23.1490593339595;
        Sun, 26 Mar 2017 22:42:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.8.133 with SMTP id 127ls1162522wmi.8.gmail; Sun, 26 Mar
 2017 22:42:18 -0700 (PDT)
X-Received: by 10.28.209.11 with SMTP id i11mr144935wmg.3.1490593338931;
        Sun, 26 Mar 2017 22:42:18 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si929305wmg.3.2017.03.26.22.42.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 22:42:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,229,1486422000"; 
   d="scan'208";a="218124218"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Mar 2017 07:42:18 +0200
Date: Mon, 27 Mar 2017 07:42:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: mawilcox@microsoft.com, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] kernel: pid: Update
 documentation.
In-Reply-To: <58d87ab9.5318620a.e4705.ca98@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703270731340.2488@hadrien>
References: <cover.1490581288.git.rvarsha016@gmail.com> <58d87ab9.5318620a.e4705.ca98@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Mon, 27 Mar 2017, Varsha Rao wrote:

> This patch adds comments to update documentation.

The format used is not consistent.  There is

fn(): text

fn() text

fn() : text

Acrually, the standard approach seems to be:

fn() - text

Also, you can use the imperative for the descriptions.  Examples below.

>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
> Changes in v2:
> - No change.
>
>  kernel/pid.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/kernel/pid.c b/kernel/pid.c
> index 0143ac0..0b0aad4 100644
> --- a/kernel/pid.c
> +++ b/kernel/pid.c
> @@ -43,6 +43,7 @@
>  #define pid_hashfn(nr, ns)	\
>  	hash_long((unsigned long)nr + (unsigned long)ns, pidhash_shift)
>  static struct hlist_head *pid_hash;
> +/* Doubly linked hash lists to find PID in given namespace. */
>  static unsigned int pidhash_shift = 4;
>  struct pid init_struct_pid = INIT_STRUCT_PID;
>
> @@ -53,6 +54,7 @@ int pid_max = PID_MAX_DEFAULT;
>  int pid_max_min = RESERVED_PIDS + 1;
>  int pid_max_max = PID_MAX_LIMIT;
>
> +/* mk_pid() returns distance between map and offset pidmap. */

For example:

/* mk_pid() - return distance between map and offset pidmap. */

>  static inline int mk_pid(struct pid_namespace *pid_ns,
>  		struct pidmap *map, int off)
>  {
> @@ -101,6 +103,7 @@ EXPORT_SYMBOL_GPL(init_pid_ns);
>
>  static  __cacheline_aligned_in_smp DEFINE_SPINLOCK(pidmap_lock);
>
> +/* free_pidmap() : It frees process id. */

/* free_pidmap() - free process id */

etc.

julia

>  static void free_pidmap(struct upid *upid)
>  {
>  	int nr = upid->nr;
> @@ -150,6 +153,9 @@ static void set_last_pid(struct pid_namespace *pid_ns, int base, int pid)
>  	} while ((prev != last_write) && (pid_before(base, last_write, pid)));
>  }
>
> +/* alloc_pidmap(): Increments last pid by one and returns it if new pid
> + * is valid.
> + */
>  static int alloc_pidmap(struct pid_namespace *pid_ns)
>  {
>  	int i, offset, max_scan, pid, last = pid_ns->last_pid;
> @@ -212,6 +218,9 @@ static int alloc_pidmap(struct pid_namespace *pid_ns)
>  	return -EAGAIN;
>  }
>
> +/* next_pidmap() is used to find the first pid which is greater than previous
> + * last allocated pid.
> + */
>  int next_pidmap(struct pid_namespace *pid_ns, unsigned int last)
>  {
>  	int offset;
> @@ -233,6 +242,7 @@ int next_pidmap(struct pid_namespace *pid_ns, unsigned int last)
>  	return -1;
>  }
>
> +/* put_pid() checks whether pid can be reallocated. */
>  void put_pid(struct pid *pid)
>  {
>  	struct pid_namespace *ns;
> @@ -249,6 +259,9 @@ void put_pid(struct pid *pid)
>  }
>  EXPORT_SYMBOL_GPL(put_pid);
>
> +/* delayed_put_pid(): Finds the real location of struct pid in the
> + * memory and checks whether it can be reallocated with put_pid().
> + */
>  static void delayed_put_pid(struct rcu_head *rhp)
>  {
>  	struct pid *pid = container_of(rhp, struct pid, rcu);
> @@ -293,6 +306,9 @@ void free_pid(struct pid *pid)
>  	call_rcu(&pid->rcu, delayed_put_pid);
>  }
>
> +/* alloc_pid(): Allocates local pid for each multiple namespaces
> + * in which new process created is visible.
> + */
>  struct pid *alloc_pid(struct pid_namespace *ns)
>  {
>  	struct pid *pid;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58d87ab9.5318620a.e4705.ca98%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

