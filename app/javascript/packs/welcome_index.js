document.addEventListener('DOMContentLoaded', () => {
    const projects = document.querySelectorAll('.project');

    projects.forEach(project => {
        project.addEventListener('mouseenter', () => {
            project.classList.add('active');
        });
        project.addEventListener('mouseleave', () => {
            project.classList.remove('active');
        });
    });
});