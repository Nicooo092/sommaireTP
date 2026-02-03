document.addEventListener('DOMContentLoaded', () => {
    const modal = document.getElementById('imageModal');
    const modalImg = document.getElementById('modalImage');
    const closeBtn = document.querySelector('.close-modal');

    // Select all zoom buttons (or images if we want direct click too)
    const zoomButtons = document.querySelectorAll('.zoom-btn');
    const imageWrappers = document.querySelectorAll('.image-wrapper');

    function openModal(imgSrc) {
        modal.style.display = "flex";
        setTimeout(() => modal.classList.add('active'), 10); // Trigger transition
        modalImg.src = imgSrc;
    }

    function closeModal() {
        modal.classList.remove('active');
        setTimeout(() => modal.style.display = "none", 300); // Wait for transition
    }

    // Attach click events to buttons
    zoomButtons.forEach(btn => {
        btn.addEventListener('click', (e) => {
            const wrapper = btn.closest('.image-wrapper');
            const img = wrapper.querySelector('img');
            if (img) {
                openModal(img.src);
            }
        });
    });

    // Also attach to images for better UX (optional, but good)
    imageWrappers.forEach(wrapper => {
        const img = wrapper.querySelector('img');
        if (img) {
            img.addEventListener('click', () => openModal(img.src));
            img.style.cursor = 'pointer';
        }
    });

    // Close events
    closeBtn.addEventListener('click', closeModal);

    // Close on click outside image
    modal.addEventListener('click', (e) => {
        if (e.target === modal) {
            closeModal();
        }
    });

    // Close on Escape key
    document.addEventListener('keydown', (e) => {
        if (e.key === "Escape" && modal.classList.contains('active')) {
            closeModal();
        }
    });
});
